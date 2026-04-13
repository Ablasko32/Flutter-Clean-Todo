import 'package:clean_todo/core/constants/errors.dart';
import 'package:clean_todo/core/failure/failure.dart';
import 'package:clean_todo/features/todo/data/datasources/todo_local_datasource.dart';
import 'package:clean_todo/features/todo/data/models/todo/todo_model.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:clean_todo/features/todo/domain/repositories/todo_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDatasource _todoLocalDatasource;

  const TodoRepositoryImpl(this._todoLocalDatasource);

  @override
  Future<Either<Failure, Unit>> addTodo(Todo todo) async {
    var todoModel = TodoModel.toDb(todo);
    try {
      await _todoLocalDatasource.addTodo(todoModel);
      return const Right(unit);
    } catch (e) {
      return Left(DatabaseFailure(Errors.dbInsertionError));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTodo(String id) async {
    try {
      await _todoLocalDatasource.deleteTodo(id);
      return const Right(unit);
    } catch (e) {
      return Left(DatabaseFailure(Errors.dbDeletionError));
    }
  }

  @override
  Future<Either<Failure, Todo>> getTodoById(String id) async {
    try {
      final todoData = await _todoLocalDatasource.getTodoById(id);
      if (todoData != null) {
        return Right(TodoModel.fromDb(todoData));
      } else {
        return Left(DatabaseFailure(Errors.dbQueryError));
      }
    } catch (e) {
      return Left(DatabaseFailure(Errors.dbQueryError));
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getTodos() async {
    try {
      final todoDataList = await _todoLocalDatasource.getAllTodos();
      final todos = todoDataList.map(TodoModel.fromDb).toList();
      return Right(todos);
    } catch (e) {
      return Left(DatabaseFailure(Errors.dbQueryError));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTodo(Todo todo) async {
    var todoModel = TodoModel.toDb(todo);
    try {
      await _todoLocalDatasource.updateTodo(todoModel);
      return const Right(unit);
    } catch (e) {
      return Left(DatabaseFailure(Errors.dbUpdateError));
    }
  }
}
