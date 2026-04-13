import 'package:clean_todo/core/theme/theme_extension.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_events.dart';
import 'package:clean_todo/shared/widgets/custom_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBottomForm extends StatefulWidget {
  final Todo? editingTodo;
  const TodoBottomForm({super.key, this.editingTodo});

  @override
  State<TodoBottomForm> createState() => _TodoBottomFormState();
}

class _TodoBottomFormState extends State<TodoBottomForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  TodoPriority? _todoPriority = TodoPriority.low;
  TodoStatus? _todoStatus;

  @override
  void initState() {
    super.initState();
    if (widget.editingTodo != null) {
      _titleController.text = widget.editingTodo!.title;
      _descriptionController.text = widget.editingTodo!.description;
      _todoPriority = widget.editingTodo!.priority;
      _todoStatus = widget.editingTodo!.status;
    }
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      Todo todo = Todo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text,
        description: _descriptionController.text,
        priority: _todoPriority!,
        status: TodoStatus.pending,
        createdAt: DateTime.now(),
      );

      if (widget.editingTodo != null) {
        todo = widget.editingTodo!.copyWith(
          title: _titleController.text,
          description: _descriptionController.text,
          priority: _todoPriority!,
          status: _todoStatus!,
        );
        context.read<TodoBloc>().add(UpdateTodoEvent(todo));
        Navigator.of(context).pop();
        return;
      }

      context.read<TodoBloc>().add(AddTodoEvent(todo));
      Navigator.of(context).pop();
    }
  }

  Widget _buildStatusDropdown() {
    return DropdownButtonFormField(
      initialValue: _todoStatus,
      items: TodoStatus.values
          .map(
            (status) => DropdownMenuItem(
              value: status,
              child: Text(status.name.toUpperCase()),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          _todoStatus = value;
        });
      },
      decoration: const InputDecoration(labelText: 'Status'),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          20,
          20,
          MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(4.00, 30.00, 4.00, 20.00),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.edit),
                  const SizedBox(width: 8.0),
                  Text(
                    "Create new task",
                    style: context.textTheme.headlineMedium,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 20.00),
              CustomTextInput(
                controller: _titleController,
                label: "Title",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.00),
              CustomTextInput(
                controller: _descriptionController,
                label: "Description",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter description";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.00),
              DropdownButtonFormField(
                initialValue: _todoPriority,
                items: TodoPriority.values
                    .map(
                      (priority) => DropdownMenuItem(
                        value: priority,
                        child: Text(priority.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _todoPriority = value;
                  });
                },
                decoration: const InputDecoration(labelText: 'Priority'),
                validator: (value) {
                  if (value == null) {
                    return 'Please select a priority';
                  }
                  return null;
                },
              ),
              if (widget.editingTodo != null) ...[
                const SizedBox(height: 16.00),
                _buildStatusDropdown(),
              ],
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _onSubmit(),
                  child: Text(
                    'Save',
                    style: context.textTheme.labelLarge?.copyWith(
                      color: context.colors.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
