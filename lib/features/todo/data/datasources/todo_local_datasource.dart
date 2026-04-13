import 'package:clean_todo/core/db/db.dart';

abstract class TodoLocalDatasource {
  Future<List<TodoData>> getAllTodos();
  Future<TodoData?> getTodoById(String id);
  Future<void> addTodo(TodoData todo);
  Future<void> updateTodo(TodoData todo);
  Future<void> deleteTodo(String id);
}
