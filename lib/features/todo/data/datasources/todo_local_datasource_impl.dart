import 'package:clean_todo/core/db/db.dart';
import 'package:clean_todo/features/todo/data/datasources/todo_local_datasource.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TodoLocalDatasource)
class TodoLocalDatasourceImpl implements TodoLocalDatasource {
  final AppDatabase _db;

  TodoLocalDatasourceImpl(this._db);

  @override
  Future<void> addTodo(TodoData todo) {
    return _db.into(_db.todos).insert(todo);
  }

  @override
  Future<void> deleteTodo(String id) {
    return (_db.delete(_db.todos)..where((t) => t.id.equals(id))).go();
  }

  @override
  Future<List<TodoData>> getAllTodos() {
    return _db.select(_db.todos).get();
  }

  @override
  Future<TodoData?> getTodoById(String id) {
    return (_db.select(
      _db.todos,
    )..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  @override
  Future<void> updateTodo(TodoData todo) async {
    await (_db.update(_db.todos)..where((t) => t.id.equals(todo.id))).write(
      TodosCompanion(
        title: Value(todo.title),
        description: Value(todo.description),
        id: Value(todo.id),
        priority: Value(todo.priority),
        status: Value(todo.status),
        createdAt: Value(todo.createdAt),
      ),
    );
  }
}
