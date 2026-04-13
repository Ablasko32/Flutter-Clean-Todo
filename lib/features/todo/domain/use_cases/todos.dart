import 'package:clean_todo/core/failure/failure.dart';
import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:clean_todo/features/todo/domain/repositories/todo_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

//get all todos
@lazySingleton
class GetTodos {
  final TodoRepository _todoRepository;

  const GetTodos(this._todoRepository);

  Future<Either<Failure, List<Todo>>> call() {
    return _todoRepository.getTodos();
  }
}

//get a single todo
@lazySingleton
class GetTodoById {
  final TodoRepository _todoRepository;

  const GetTodoById(this._todoRepository);

  Future<Either<Failure, Todo>> call(String id) {
    return _todoRepository.getTodoById(id);
  }
}

//add todo with Todo
@lazySingleton
class AddTodo {
  final TodoRepository _todoRepository;

  const AddTodo(this._todoRepository);

  Future<Either<Failure, Unit>> call(Todo todo) {
    return _todoRepository.addTodo(todo);
  }
}

//delete todo by id
@lazySingleton
class DeleteTodo {
  final TodoRepository _todoRepository;

  const DeleteTodo(this._todoRepository);

  Future<Either<Failure, Unit>> call(String id) {
    return _todoRepository.deleteTodo(id);
  }
}

//Update todo with Todo
@lazySingleton
class UpdateTodo {
  final TodoRepository _todoRepository;

  const UpdateTodo(this._todoRepository);

  Future<Either<Failure, Unit>> call(Todo todo) {
    return _todoRepository.updateTodo(todo);
  }
}
