// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent()';
}


}

/// @nodoc
class $TodoEventCopyWith<$Res>  {
$TodoEventCopyWith(TodoEvent _, $Res Function(TodoEvent) __);
}


/// Adds pattern-matching-related methods to [TodoEvent].
extension TodoEventPatterns on TodoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddTodoEvent value)?  add,TResult Function( DeleteTodoEvent value)?  delete,TResult Function( UpdateTodoEvent value)?  update,TResult Function( GetTodoEvent value)?  get,TResult Function( GetTodosEvent value)?  getAll,TResult Function( SearchTodosEvent value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddTodoEvent() when add != null:
return add(_that);case DeleteTodoEvent() when delete != null:
return delete(_that);case UpdateTodoEvent() when update != null:
return update(_that);case GetTodoEvent() when get != null:
return get(_that);case GetTodosEvent() when getAll != null:
return getAll(_that);case SearchTodosEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddTodoEvent value)  add,required TResult Function( DeleteTodoEvent value)  delete,required TResult Function( UpdateTodoEvent value)  update,required TResult Function( GetTodoEvent value)  get,required TResult Function( GetTodosEvent value)  getAll,required TResult Function( SearchTodosEvent value)  search,}){
final _that = this;
switch (_that) {
case AddTodoEvent():
return add(_that);case DeleteTodoEvent():
return delete(_that);case UpdateTodoEvent():
return update(_that);case GetTodoEvent():
return get(_that);case GetTodosEvent():
return getAll(_that);case SearchTodosEvent():
return search(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddTodoEvent value)?  add,TResult? Function( DeleteTodoEvent value)?  delete,TResult? Function( UpdateTodoEvent value)?  update,TResult? Function( GetTodoEvent value)?  get,TResult? Function( GetTodosEvent value)?  getAll,TResult? Function( SearchTodosEvent value)?  search,}){
final _that = this;
switch (_that) {
case AddTodoEvent() when add != null:
return add(_that);case DeleteTodoEvent() when delete != null:
return delete(_that);case UpdateTodoEvent() when update != null:
return update(_that);case GetTodoEvent() when get != null:
return get(_that);case GetTodosEvent() when getAll != null:
return getAll(_that);case SearchTodosEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Todo todo)?  add,TResult Function( String id)?  delete,TResult Function( Todo todo)?  update,TResult Function( String id)?  get,TResult Function()?  getAll,TResult Function( String query)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddTodoEvent() when add != null:
return add(_that.todo);case DeleteTodoEvent() when delete != null:
return delete(_that.id);case UpdateTodoEvent() when update != null:
return update(_that.todo);case GetTodoEvent() when get != null:
return get(_that.id);case GetTodosEvent() when getAll != null:
return getAll();case SearchTodosEvent() when search != null:
return search(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Todo todo)  add,required TResult Function( String id)  delete,required TResult Function( Todo todo)  update,required TResult Function( String id)  get,required TResult Function()  getAll,required TResult Function( String query)  search,}) {final _that = this;
switch (_that) {
case AddTodoEvent():
return add(_that.todo);case DeleteTodoEvent():
return delete(_that.id);case UpdateTodoEvent():
return update(_that.todo);case GetTodoEvent():
return get(_that.id);case GetTodosEvent():
return getAll();case SearchTodosEvent():
return search(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Todo todo)?  add,TResult? Function( String id)?  delete,TResult? Function( Todo todo)?  update,TResult? Function( String id)?  get,TResult? Function()?  getAll,TResult? Function( String query)?  search,}) {final _that = this;
switch (_that) {
case AddTodoEvent() when add != null:
return add(_that.todo);case DeleteTodoEvent() when delete != null:
return delete(_that.id);case UpdateTodoEvent() when update != null:
return update(_that.todo);case GetTodoEvent() when get != null:
return get(_that.id);case GetTodosEvent() when getAll != null:
return getAll();case SearchTodosEvent() when search != null:
return search(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class AddTodoEvent implements TodoEvent {
  const AddTodoEvent(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTodoEventCopyWith<AddTodoEvent> get copyWith => _$AddTodoEventCopyWithImpl<AddTodoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTodoEvent&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoEvent.add(todo: $todo)';
}


}

/// @nodoc
abstract mixin class $AddTodoEventCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory $AddTodoEventCopyWith(AddTodoEvent value, $Res Function(AddTodoEvent) _then) = _$AddTodoEventCopyWithImpl;
@useResult
$Res call({
 Todo todo
});


$TodoCopyWith<$Res> get todo;

}
/// @nodoc
class _$AddTodoEventCopyWithImpl<$Res>
    implements $AddTodoEventCopyWith<$Res> {
  _$AddTodoEventCopyWithImpl(this._self, this._then);

  final AddTodoEvent _self;
  final $Res Function(AddTodoEvent) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(AddTodoEvent(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}

/// Create a copy of TodoEvent
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


class DeleteTodoEvent implements TodoEvent {
  const DeleteTodoEvent(this.id);
  

 final  String id;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTodoEventCopyWith<DeleteTodoEvent> get copyWith => _$DeleteTodoEventCopyWithImpl<DeleteTodoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTodoEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TodoEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTodoEventCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory $DeleteTodoEventCopyWith(DeleteTodoEvent value, $Res Function(DeleteTodoEvent) _then) = _$DeleteTodoEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteTodoEventCopyWithImpl<$Res>
    implements $DeleteTodoEventCopyWith<$Res> {
  _$DeleteTodoEventCopyWithImpl(this._self, this._then);

  final DeleteTodoEvent _self;
  final $Res Function(DeleteTodoEvent) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteTodoEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateTodoEvent implements TodoEvent {
  const UpdateTodoEvent(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTodoEventCopyWith<UpdateTodoEvent> get copyWith => _$UpdateTodoEventCopyWithImpl<UpdateTodoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTodoEvent&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoEvent.update(todo: $todo)';
}


}

/// @nodoc
abstract mixin class $UpdateTodoEventCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory $UpdateTodoEventCopyWith(UpdateTodoEvent value, $Res Function(UpdateTodoEvent) _then) = _$UpdateTodoEventCopyWithImpl;
@useResult
$Res call({
 Todo todo
});


$TodoCopyWith<$Res> get todo;

}
/// @nodoc
class _$UpdateTodoEventCopyWithImpl<$Res>
    implements $UpdateTodoEventCopyWith<$Res> {
  _$UpdateTodoEventCopyWithImpl(this._self, this._then);

  final UpdateTodoEvent _self;
  final $Res Function(UpdateTodoEvent) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(UpdateTodoEvent(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}

/// Create a copy of TodoEvent
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


class GetTodoEvent implements TodoEvent {
  const GetTodoEvent(this.id);
  

 final  String id;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTodoEventCopyWith<GetTodoEvent> get copyWith => _$GetTodoEventCopyWithImpl<GetTodoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTodoEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TodoEvent.get(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTodoEventCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory $GetTodoEventCopyWith(GetTodoEvent value, $Res Function(GetTodoEvent) _then) = _$GetTodoEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetTodoEventCopyWithImpl<$Res>
    implements $GetTodoEventCopyWith<$Res> {
  _$GetTodoEventCopyWithImpl(this._self, this._then);

  final GetTodoEvent _self;
  final $Res Function(GetTodoEvent) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetTodoEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetTodosEvent implements TodoEvent {
  const GetTodosEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTodosEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent.getAll()';
}


}




/// @nodoc


class SearchTodosEvent implements TodoEvent {
  const SearchTodosEvent(this.query);
  

 final  String query;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchTodosEventCopyWith<SearchTodosEvent> get copyWith => _$SearchTodosEventCopyWithImpl<SearchTodosEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchTodosEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'TodoEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchTodosEventCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory $SearchTodosEventCopyWith(SearchTodosEvent value, $Res Function(SearchTodosEvent) _then) = _$SearchTodosEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchTodosEventCopyWithImpl<$Res>
    implements $SearchTodosEventCopyWith<$Res> {
  _$SearchTodosEventCopyWithImpl(this._self, this._then);

  final SearchTodosEvent _self;
  final $Res Function(SearchTodosEvent) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchTodosEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
