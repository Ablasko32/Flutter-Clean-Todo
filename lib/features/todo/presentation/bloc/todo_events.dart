import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "todo_events.freezed.dart";

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.add(Todo todo) = AddTodoEvent;
  const factory TodoEvent.delete(String id) = DeleteTodoEvent;
  const factory TodoEvent.update(Todo todo) = UpdateTodoEvent;
  const factory TodoEvent.get(String id) = GetTodoEvent;
  const factory TodoEvent.getAll() = GetTodosEvent;
  const factory TodoEvent.search(String query) = SearchTodosEvent;
}
