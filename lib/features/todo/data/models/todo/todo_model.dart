import 'package:clean_todo/core/db/db.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';

class TodoModel {
  static Todo fromDb(TodoData data) {
    return Todo(
      id: data.id,
      title: data.title,
      description: data.description,
      priority: TodoPriority.values.byName(data.priority),
      status: TodoStatus.values.byName(data.status),
      createdAt: data.createdAt,
    );
  }

  static TodoData toDb(Todo todo) {
    return TodoData(
      id: todo.id,
      title: todo.title,
      description: todo.description,
      priority: todo.priority.name,
      status: todo.status.name,
      createdAt: todo.createdAt,
    );
  }
}
