import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:clean_todo/features/todo/domain/use_cases/todos.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_events.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  //use cases
  final GetTodos _getTodos;
  final GetTodoById _getTodoById;
  final AddTodo _addTodo;
  final DeleteTodo _deleteTodo;
  final UpdateTodo _updateTodo;

  List<Todo>? _allTodos;

  TodoBloc({
    required GetTodos getTodos,
    required GetTodoById getTodoById,
    required AddTodo addTodo,
    required DeleteTodo deleteTodo,
    required UpdateTodo updateTodo,
  }) : _getTodos = getTodos,
       _getTodoById = getTodoById,
       _addTodo = addTodo,
       _deleteTodo = deleteTodo,
       _updateTodo = updateTodo,
       super(TodoInitalState()) {
    on<GetTodosEvent>(_onGetTodos);
    on<AddTodoEvent>(_onAddTodo);
    on<DeleteTodoEvent>(_onDeleteTodo);
    on<UpdateTodoEvent>(_onUpdateTodo);
    on<GetTodoEvent>(_onGetTodoById);
    on<SearchTodosEvent>(_onSearchTodos);
  }

  Future<void> _onGetTodos(GetTodosEvent event, Emitter<TodoState> emit) async {
    emit(TodoLoadingState());
    final result = await _getTodos();
    result.fold((failure) => emit(TodoErrorState(failure.message)), (todos) {
      _allTodos = todos;
      emit(TodoLoadedState(todos));
    });
  }

  Future<void> _onGetTodoById(
    GetTodoEvent event,
    Emitter<TodoState> emit,
  ) async {
    emit(TodoLoadingState());

    final result = await _getTodoById(event.id);
    result.fold(
      (failure) => emit(TodoErrorState(failure.message)),
      (todo) => emit(TodoSingleLoadedState(todo)),
    );
  }

  Future<void> _onAddTodo(AddTodoEvent event, Emitter<TodoState> emit) async {
    emit(TodoLoadingState());
    final result = await _addTodo(event.todo);

    result.fold((failure) => emit(TodoErrorState(failure.message)), (_) {
      emit(TodoCreatedState());
      add(GetTodosEvent());
    });
  }

  Future<void> _onDeleteTodo(
    DeleteTodoEvent event,
    Emitter<TodoState> emit,
  ) async {
    emit(TodoLoadingState());

    final result = await _deleteTodo(event.id);

    result.fold((failure) => emit(TodoErrorState(failure.message)), (_) {
      emit(TodoDeletedState());
      add(GetTodosEvent());
    });
  }

  Future<void> _onUpdateTodo(
    UpdateTodoEvent event,
    Emitter<TodoState> emit,
  ) async {
    emit(TodoLoadingState());

    final result = await _updateTodo(event.todo);

    result.fold((failure) => emit(TodoErrorState(failure.message)), (_) {
      emit(TodoUpdatedState());
      add(GetTodosEvent());
    });
  }

  void _onSearchTodos(SearchTodosEvent event, Emitter<TodoState> emit) {
    String query = event.query.toLowerCase();

    if (query.isEmpty) {
      emit(TodoLoadedState(_allTodos!));
      return;
    }

    var filtered = _allTodos!
        .where(
          (todo) =>
              todo.title.toLowerCase().contains(query) ||
              todo.description.toLowerCase().contains(query),
        )
        .toList();

    emit(TodoLoadedState(filtered));
  }
}
