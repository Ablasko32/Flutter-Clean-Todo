import 'package:clean_todo/core/theme/color_tokens.dart';
import 'package:clean_todo/core/theme/theme_extension.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_events.dart';
import 'package:clean_todo/features/todo/presentation/widgets/todo_bottom_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  void _onDelete(BuildContext context) {
    final bloc = context.read<TodoBloc>();
    showDialog(
      context: context,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: AlertDialog(
          title: const Text('Delete Todo'),
          content: const Text('Are you sure you want to delete this todo?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<TodoBloc>().add(DeleteTodoEvent(todo.id));
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: DarkColorTokens.error,
                foregroundColor: DarkColorTokens.onError,
              ),
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }

  void _onEdit(BuildContext context) {
    final bloc = context.read<TodoBloc>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => BlocProvider.value(
        value: bloc,
        child: TodoBottomForm(editingTodo: todo),
      ),
    );
  }

  Widget _buildPriorityChip(BuildContext context, TodoPriority priority) {
    Color chipColor;
    Color textColor;

    switch (priority) {
      case TodoPriority.low:
        chipColor = context.success;
        textColor = context.onSuccess;
      case TodoPriority.medium:
        chipColor = context.warning;
        textColor = Colors.white;
      case TodoPriority.high:
        chipColor = context.colors.error;
        textColor = context.colors.onError;
    }

    return Chip(
      backgroundColor: chipColor,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      label: Text(
        priority.name.toUpperCase(),
        style: context.textTheme.labelSmall?.copyWith(color: textColor),
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context, TodoStatus status) {
    Color chipColor;
    Color textColor;

    switch (status) {
      case TodoStatus.pending:
        chipColor = context.colors.surfaceBright;
        textColor = context.colors.onSurface;
      case TodoStatus.inProgress:
        chipColor = context.warning;
        textColor = Colors.white;
      case TodoStatus.completed:
        chipColor = context.success;
        textColor = context.onSuccess;
    }

    return Chip(
      backgroundColor: chipColor,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      label: Text(
        status.name.toUpperCase(),
        style: context.textTheme.labelSmall?.copyWith(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.colors.surface,
        border: Border.all(color: context.colors.primary, width: 1),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                todo.title,
                style: context.textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => _onEdit(context),
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () => _onDelete(context),
                    icon: Icon(Icons.delete, color: context.colors.error),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _buildPriorityChip(context, todo.priority),
              SizedBox(width: 15.00),
              _buildStatusChip(context, todo.status),
            ],
          ),

          SizedBox(height: 8),
          Text(todo.description, style: context.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
