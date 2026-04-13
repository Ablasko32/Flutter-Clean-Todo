// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodoInitalState value)?  inital,TResult Function( TodoLoadingState value)?  loading,TResult Function( TodoLoadedState value)?  loaded,TResult Function( TodoSingleLoadedState value)?  singleLoaded,TResult Function( TodoErrorState value)?  error,TResult Function( TodoDeletedState value)?  deleted,TResult Function( TodoUpdatedState value)?  updated,TResult Function( TodoCreatedState value)?  created,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodoInitalState() when inital != null:
return inital(_that);case TodoLoadingState() when loading != null:
return loading(_that);case TodoLoadedState() when loaded != null:
return loaded(_that);case TodoSingleLoadedState() when singleLoaded != null:
return singleLoaded(_that);case TodoErrorState() when error != null:
return error(_that);case TodoDeletedState() when deleted != null:
return deleted(_that);case TodoUpdatedState() when updated != null:
return updated(_that);case TodoCreatedState() when created != null:
return created(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodoInitalState value)  inital,required TResult Function( TodoLoadingState value)  loading,required TResult Function( TodoLoadedState value)  loaded,required TResult Function( TodoSingleLoadedState value)  singleLoaded,required TResult Function( TodoErrorState value)  error,required TResult Function( TodoDeletedState value)  deleted,required TResult Function( TodoUpdatedState value)  updated,required TResult Function( TodoCreatedState value)  created,}){
final _that = this;
switch (_that) {
case TodoInitalState():
return inital(_that);case TodoLoadingState():
return loading(_that);case TodoLoadedState():
return loaded(_that);case TodoSingleLoadedState():
return singleLoaded(_that);case TodoErrorState():
return error(_that);case TodoDeletedState():
return deleted(_that);case TodoUpdatedState():
return updated(_that);case TodoCreatedState():
return created(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodoInitalState value)?  inital,TResult? Function( TodoLoadingState value)?  loading,TResult? Function( TodoLoadedState value)?  loaded,TResult? Function( TodoSingleLoadedState value)?  singleLoaded,TResult? Function( TodoErrorState value)?  error,TResult? Function( TodoDeletedState value)?  deleted,TResult? Function( TodoUpdatedState value)?  updated,TResult? Function( TodoCreatedState value)?  created,}){
final _that = this;
switch (_that) {
case TodoInitalState() when inital != null:
return inital(_that);case TodoLoadingState() when loading != null:
return loading(_that);case TodoLoadedState() when loaded != null:
return loaded(_that);case TodoSingleLoadedState() when singleLoaded != null:
return singleLoaded(_that);case TodoErrorState() when error != null:
return error(_that);case TodoDeletedState() when deleted != null:
return deleted(_that);case TodoUpdatedState() when updated != null:
return updated(_that);case TodoCreatedState() when created != null:
return created(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inital,TResult Function()?  loading,TResult Function( List<Todo> todos)?  loaded,TResult Function( Todo todo)?  singleLoaded,TResult Function( String message)?  error,TResult Function()?  deleted,TResult Function()?  updated,TResult Function()?  created,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodoInitalState() when inital != null:
return inital();case TodoLoadingState() when loading != null:
return loading();case TodoLoadedState() when loaded != null:
return loaded(_that.todos);case TodoSingleLoadedState() when singleLoaded != null:
return singleLoaded(_that.todo);case TodoErrorState() when error != null:
return error(_that.message);case TodoDeletedState() when deleted != null:
return deleted();case TodoUpdatedState() when updated != null:
return updated();case TodoCreatedState() when created != null:
return created();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inital,required TResult Function()  loading,required TResult Function( List<Todo> todos)  loaded,required TResult Function( Todo todo)  singleLoaded,required TResult Function( String message)  error,required TResult Function()  deleted,required TResult Function()  updated,required TResult Function()  created,}) {final _that = this;
switch (_that) {
case TodoInitalState():
return inital();case TodoLoadingState():
return loading();case TodoLoadedState():
return loaded(_that.todos);case TodoSingleLoadedState():
return singleLoaded(_that.todo);case TodoErrorState():
return error(_that.message);case TodoDeletedState():
return deleted();case TodoUpdatedState():
return updated();case TodoCreatedState():
return created();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inital,TResult? Function()?  loading,TResult? Function( List<Todo> todos)?  loaded,TResult? Function( Todo todo)?  singleLoaded,TResult? Function( String message)?  error,TResult? Function()?  deleted,TResult? Function()?  updated,TResult? Function()?  created,}) {final _that = this;
switch (_that) {
case TodoInitalState() when inital != null:
return inital();case TodoLoadingState() when loading != null:
return loading();case TodoLoadedState() when loaded != null:
return loaded(_that.todos);case TodoSingleLoadedState() when singleLoaded != null:
return singleLoaded(_that.todo);case TodoErrorState() when error != null:
return error(_that.message);case TodoDeletedState() when deleted != null:
return deleted();case TodoUpdatedState() when updated != null:
return updated();case TodoCreatedState() when created != null:
return created();case _:
  return null;

}
}

}

/// @nodoc


class TodoInitalState with DiagnosticableTreeMixin implements TodoState {
  const TodoInitalState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.inital'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInitalState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.inital()';
}


}




/// @nodoc


class TodoLoadingState with DiagnosticableTreeMixin implements TodoState {
  const TodoLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.loading()';
}


}




/// @nodoc


class TodoLoadedState with DiagnosticableTreeMixin implements TodoState {
  const TodoLoadedState(final  List<Todo> todos): _todos = todos;
  

 final  List<Todo> _todos;
 List<Todo> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoLoadedStateCopyWith<TodoLoadedState> get copyWith => _$TodoLoadedStateCopyWithImpl<TodoLoadedState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.loaded'))
    ..add(DiagnosticsProperty('todos', todos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoLoadedState&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.loaded(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoLoadedStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoLoadedStateCopyWith(TodoLoadedState value, $Res Function(TodoLoadedState) _then) = _$TodoLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<Todo> todos
});




}
/// @nodoc
class _$TodoLoadedStateCopyWithImpl<$Res>
    implements $TodoLoadedStateCopyWith<$Res> {
  _$TodoLoadedStateCopyWithImpl(this._self, this._then);

  final TodoLoadedState _self;
  final $Res Function(TodoLoadedState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(TodoLoadedState(
null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}


}

/// @nodoc


class TodoSingleLoadedState with DiagnosticableTreeMixin implements TodoState {
  const TodoSingleLoadedState(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoSingleLoadedStateCopyWith<TodoSingleLoadedState> get copyWith => _$TodoSingleLoadedStateCopyWithImpl<TodoSingleLoadedState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.singleLoaded'))
    ..add(DiagnosticsProperty('todo', todo));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoSingleLoadedState&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.singleLoaded(todo: $todo)';
}


}

/// @nodoc
abstract mixin class $TodoSingleLoadedStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoSingleLoadedStateCopyWith(TodoSingleLoadedState value, $Res Function(TodoSingleLoadedState) _then) = _$TodoSingleLoadedStateCopyWithImpl;
@useResult
$Res call({
 Todo todo
});


$TodoCopyWith<$Res> get todo;

}
/// @nodoc
class _$TodoSingleLoadedStateCopyWithImpl<$Res>
    implements $TodoSingleLoadedStateCopyWith<$Res> {
  _$TodoSingleLoadedStateCopyWithImpl(this._self, this._then);

  final TodoSingleLoadedState _self;
  final $Res Function(TodoSingleLoadedState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(TodoSingleLoadedState(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoCopyWith<$Res> get todo {
  
  return $TodoCopyWith<$Res>(_self.todo, (value) {
    return _then(_self.copyWith(todo: value));
  });
}
}

/// @nodoc


class TodoErrorState with DiagnosticableTreeMixin implements TodoState {
  const TodoErrorState(this.message);
  

 final  String message;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoErrorStateCopyWith<TodoErrorState> get copyWith => _$TodoErrorStateCopyWithImpl<TodoErrorState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TodoErrorStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoErrorStateCopyWith(TodoErrorState value, $Res Function(TodoErrorState) _then) = _$TodoErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TodoErrorStateCopyWithImpl<$Res>
    implements $TodoErrorStateCopyWith<$Res> {
  _$TodoErrorStateCopyWithImpl(this._self, this._then);

  final TodoErrorState _self;
  final $Res Function(TodoErrorState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TodoErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TodoDeletedState with DiagnosticableTreeMixin implements TodoState {
  const TodoDeletedState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.deleted'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDeletedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.deleted()';
}


}




/// @nodoc


class TodoUpdatedState with DiagnosticableTreeMixin implements TodoState {
  const TodoUpdatedState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.updated'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoUpdatedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.updated()';
}


}




/// @nodoc


class TodoCreatedState with DiagnosticableTreeMixin implements TodoState {
  const TodoCreatedState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.created'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoCreatedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.created()';
}


}




// dart format on
