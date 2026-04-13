import 'package:clean_todo/features/todo/domain/entities/todo/todo.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "todo_state.freezed.dart";

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.inital() = TodoInitalState;
  const factory TodoState.loading() = TodoLoadingState;
  const factory TodoState.loaded(List<Todo> todos) = TodoLoadedState;
  const factory TodoState.singleLoaded(Todo todo) = TodoSingleLoadedState;
  const factory TodoState.error(String message) = TodoErrorState;
  const factory TodoState.deleted() = TodoDeletedState;
  const factory TodoState.updated() = TodoUpdatedState;
  const factory TodoState.created() = TodoCreatedState;
}
