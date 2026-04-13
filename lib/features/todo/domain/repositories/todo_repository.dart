import 'package:clean_todo/core/failure/failure.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:fpdart/fpdart.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getTodos();

  Future<Either<Failure, Todo>> getTodoById(String id);

  Future<Either<Failure, Unit>> addTodo(Todo todo);

  Future<Either<Failure, Unit>> updateTodo(Todo todo);

  Future<Either<Failure, Unit>> deleteTodo(String id);
}
