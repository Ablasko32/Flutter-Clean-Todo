// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_todo/core/db/db.dart' as _i799;
import 'package:clean_todo/core/DI/database_module.dart' as _i488;
import 'package:clean_todo/core/theme/bloc/theme_bloc.dart' as _i908;
import 'package:clean_todo/features/todo/data/datasources/todo_local_datasource.dart'
    as _i610;
import 'package:clean_todo/features/todo/data/datasources/todo_local_datasource_impl.dart'
    as _i420;
import 'package:clean_todo/features/todo/data/repositoriesImp/todo_repository_impl.dart'
    as _i335;
import 'package:clean_todo/features/todo/domain/repositories/todo_repository.dart'
    as _i703;
import 'package:clean_todo/features/todo/domain/use_cases/todos.dart' as _i284;
import 'package:clean_todo/features/todo/presentation/bloc/todo_bloc.dart'
    as _i665;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final databaseModule = _$DatabaseModule();
    gh.lazySingleton<_i799.AppDatabase>(() => databaseModule.appDatabase);
    gh.lazySingleton<_i908.ThemeBloc>(() => _i908.ThemeBloc());
    gh.lazySingleton<_i610.TodoLocalDatasource>(
      () => _i420.TodoLocalDatasourceImpl(gh<_i799.AppDatabase>()),
    );
    gh.lazySingleton<_i703.TodoRepository>(
      () => _i335.TodoRepositoryImpl(gh<_i610.TodoLocalDatasource>()),
    );
    gh.lazySingleton<_i284.GetTodos>(
      () => _i284.GetTodos(gh<_i703.TodoRepository>()),
    );
    gh.lazySingleton<_i284.GetTodoById>(
      () => _i284.GetTodoById(gh<_i703.TodoRepository>()),
    );
    gh.lazySingleton<_i284.AddTodo>(
      () => _i284.AddTodo(gh<_i703.TodoRepository>()),
    );
    gh.lazySingleton<_i284.DeleteTodo>(
      () => _i284.DeleteTodo(gh<_i703.TodoRepository>()),
    );
    gh.lazySingleton<_i284.UpdateTodo>(
      () => _i284.UpdateTodo(gh<_i703.TodoRepository>()),
    );
    gh.factory<_i665.TodoBloc>(
      () => _i665.TodoBloc(
        getTodos: gh<_i284.GetTodos>(),
        getTodoById: gh<_i284.GetTodoById>(),
        addTodo: gh<_i284.AddTodo>(),
        deleteTodo: gh<_i284.DeleteTodo>(),
        updateTodo: gh<_i284.UpdateTodo>(),
      ),
    );
    return this;
  }
}

class _$DatabaseModule extends _i488.DatabaseModule {}
