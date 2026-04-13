import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String title,
    required String description,
    required TodoPriority priority,
    required TodoStatus status,
    required DateTime createdAt,
  }) = _Todo;
}

enum TodoPriority { low, medium, high }

enum TodoStatus { pending, inProgress, completed }
