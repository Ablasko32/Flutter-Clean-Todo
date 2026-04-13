import 'package:clean_todo/core/theme/theme_extension.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_state.dart';
import 'package:clean_todo/features/todo/presentation/widgets/togge_theme_button.dart';
import 'package:clean_todo/features/todo/presentation/widgets/custom_search_bar.dart';
import 'package:clean_todo/features/todo/presentation/widgets/todo_bottom_form.dart';
import 'package:clean_todo/features/todo/presentation/widgets/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoMainListScreen extends StatelessWidget {
  const TodoMainListScreen({super.key});

  void _openTodoFormScreen(BuildContext context) {
    final bloc = context.read<TodoBloc>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) =>
          BlocProvider.value(value: bloc, child: const TodoBottomForm()),
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.info_outline, color: context.colors.primary),
              const SizedBox(height: 12),
              Text("No todos found!", style: context.textTheme.headlineSmall),

              const SizedBox(height: 12),
              Text(
                "Tap the + button to add your first todo.",
                style: context.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodosList(BuildContext context, List<Todo> todos) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return TodoItem(todo: todo);
      },
    );
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.dangerous_outlined),
          const SizedBox(height: 12),
          Text(
            message,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colors.error,
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(
    BuildContext context,
    String message, {
    Color? backgroundColor,
    Color? textColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textTheme.bodyMedium?.copyWith(color: textColor),
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean Tasks'),
        leading: const Icon(Icons.notifications_outlined),
        actions: [ToggleThemeButton()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomSearchBar(),
            ),
            Expanded(
              child: BlocConsumer<TodoBloc, TodoState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (todos) => todos.isEmpty
                        ? _buildEmpty(context)
                        : _buildTodosList(context, todos),
                    error: (message) => _buildError(context, message),
                    orElse: () => const Text("Welcome to Clean Tasks!"),
                  );
                },
                listener: (context, state) {
                  state.maybeWhen(
                    updated: () => _showSnackBar(
                      context,
                      "Task has been updated",
                      backgroundColor: context.warning,
                      textColor: context.onWarning,
                    ),
                    deleted: () => _showSnackBar(
                      context,
                      "Task has been deleted",
                      backgroundColor: context.colors.error,
                      textColor: context.colors.onError,
                    ),
                    created: () => _showSnackBar(
                      context,
                      "Task has been created",
                      backgroundColor: context.success,
                      textColor: context.onSuccess,
                    ),
                    orElse: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () => _openTodoFormScreen(context),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
