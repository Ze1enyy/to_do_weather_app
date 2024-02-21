// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(String title, String description, String category)
        addTask,
    required TResult Function(int index) removeTask,
    required TResult Function(int index) updateTaskStatus,
    required TResult Function(String category) filterBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(String title, String description, String category)?
        addTask,
    TResult? Function(int index)? removeTask,
    TResult? Function(int index)? updateTaskStatus,
    TResult? Function(String category)? filterBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(String title, String description, String category)?
        addTask,
    TResult Function(int index)? removeTask,
    TResult Function(int index)? updateTaskStatus,
    TResult Function(String category)? filterBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
    required TResult Function(UpdateTaskStatus value) updateTaskStatus,
    required TResult Function(FilterByCategoryEvent value) filterBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
    TResult? Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult? Function(FilterByCategoryEvent value)? filterBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    TResult Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult Function(FilterByCategoryEvent value)? filterBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTasksEventImplCopyWith<$Res> {
  factory _$$GetTasksEventImplCopyWith(
          _$GetTasksEventImpl value, $Res Function(_$GetTasksEventImpl) then) =
      __$$GetTasksEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTasksEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksEventImpl>
    implements _$$GetTasksEventImplCopyWith<$Res> {
  __$$GetTasksEventImplCopyWithImpl(
      _$GetTasksEventImpl _value, $Res Function(_$GetTasksEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTasksEventImpl implements GetTasksEvent {
  const _$GetTasksEventImpl();

  @override
  String toString() {
    return 'TaskEvent.getTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTasksEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(String title, String description, String category)
        addTask,
    required TResult Function(int index) removeTask,
    required TResult Function(int index) updateTaskStatus,
    required TResult Function(String category) filterBy,
  }) {
    return getTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(String title, String description, String category)?
        addTask,
    TResult? Function(int index)? removeTask,
    TResult? Function(int index)? updateTaskStatus,
    TResult? Function(String category)? filterBy,
  }) {
    return getTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(String title, String description, String category)?
        addTask,
    TResult Function(int index)? removeTask,
    TResult Function(int index)? updateTaskStatus,
    TResult Function(String category)? filterBy,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
    required TResult Function(UpdateTaskStatus value) updateTaskStatus,
    required TResult Function(FilterByCategoryEvent value) filterBy,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
    TResult? Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult? Function(FilterByCategoryEvent value)? filterBy,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    TResult Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult Function(FilterByCategoryEvent value)? filterBy,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class GetTasksEvent implements TaskEvent {
  const factory GetTasksEvent() = _$GetTasksEventImpl;
}

/// @nodoc
abstract class _$$AddTaskEventImplCopyWith<$Res> {
  factory _$$AddTaskEventImplCopyWith(
          _$AddTaskEventImpl value, $Res Function(_$AddTaskEventImpl) then) =
      __$$AddTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, String category});
}

/// @nodoc
class __$$AddTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskEventImpl>
    implements _$$AddTaskEventImplCopyWith<$Res> {
  __$$AddTaskEventImplCopyWithImpl(
      _$AddTaskEventImpl _value, $Res Function(_$AddTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_$AddTaskEventImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTaskEventImpl implements AddTaskEvent {
  const _$AddTaskEventImpl(
      {required this.title, required this.description, required this.category});

  @override
  final String title;
  @override
  final String description;
  @override
  final String category;

  @override
  String toString() {
    return 'TaskEvent.addTask(title: $title, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      __$$AddTaskEventImplCopyWithImpl<_$AddTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(String title, String description, String category)
        addTask,
    required TResult Function(int index) removeTask,
    required TResult Function(int index) updateTaskStatus,
    required TResult Function(String category) filterBy,
  }) {
    return addTask(title, description, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(String title, String description, String category)?
        addTask,
    TResult? Function(int index)? removeTask,
    TResult? Function(int index)? updateTaskStatus,
    TResult? Function(String category)? filterBy,
  }) {
    return addTask?.call(title, description, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(String title, String description, String category)?
        addTask,
    TResult Function(int index)? removeTask,
    TResult Function(int index)? updateTaskStatus,
    TResult Function(String category)? filterBy,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(title, description, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
    required TResult Function(UpdateTaskStatus value) updateTaskStatus,
    required TResult Function(FilterByCategoryEvent value) filterBy,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
    TResult? Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult? Function(FilterByCategoryEvent value)? filterBy,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    TResult Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult Function(FilterByCategoryEvent value)? filterBy,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TaskEvent {
  const factory AddTaskEvent(
      {required final String title,
      required final String description,
      required final String category}) = _$AddTaskEventImpl;

  String get title;
  String get description;
  String get category;
  @JsonKey(ignore: true)
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaskEventImplCopyWith<$Res> {
  factory _$$RemoveTaskEventImplCopyWith(_$RemoveTaskEventImpl value,
          $Res Function(_$RemoveTaskEventImpl) then) =
      __$$RemoveTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$RemoveTaskEventImpl>
    implements _$$RemoveTaskEventImplCopyWith<$Res> {
  __$$RemoveTaskEventImplCopyWithImpl(
      _$RemoveTaskEventImpl _value, $Res Function(_$RemoveTaskEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveTaskEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveTaskEventImpl implements RemoveTaskEvent {
  const _$RemoveTaskEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TaskEvent.removeTask(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaskEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaskEventImplCopyWith<_$RemoveTaskEventImpl> get copyWith =>
      __$$RemoveTaskEventImplCopyWithImpl<_$RemoveTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(String title, String description, String category)
        addTask,
    required TResult Function(int index) removeTask,
    required TResult Function(int index) updateTaskStatus,
    required TResult Function(String category) filterBy,
  }) {
    return removeTask(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(String title, String description, String category)?
        addTask,
    TResult? Function(int index)? removeTask,
    TResult? Function(int index)? updateTaskStatus,
    TResult? Function(String category)? filterBy,
  }) {
    return removeTask?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(String title, String description, String category)?
        addTask,
    TResult Function(int index)? removeTask,
    TResult Function(int index)? updateTaskStatus,
    TResult Function(String category)? filterBy,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
    required TResult Function(UpdateTaskStatus value) updateTaskStatus,
    required TResult Function(FilterByCategoryEvent value) filterBy,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
    TResult? Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult? Function(FilterByCategoryEvent value)? filterBy,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    TResult Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult Function(FilterByCategoryEvent value)? filterBy,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class RemoveTaskEvent implements TaskEvent {
  const factory RemoveTaskEvent(final int index) = _$RemoveTaskEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveTaskEventImplCopyWith<_$RemoveTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskStatusImplCopyWith<$Res> {
  factory _$$UpdateTaskStatusImplCopyWith(_$UpdateTaskStatusImpl value,
          $Res Function(_$UpdateTaskStatusImpl) then) =
      __$$UpdateTaskStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateTaskStatusImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskStatusImpl>
    implements _$$UpdateTaskStatusImplCopyWith<$Res> {
  __$$UpdateTaskStatusImplCopyWithImpl(_$UpdateTaskStatusImpl _value,
      $Res Function(_$UpdateTaskStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateTaskStatusImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateTaskStatusImpl implements UpdateTaskStatus {
  const _$UpdateTaskStatusImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TaskEvent.updateTaskStatus(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskStatusImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskStatusImplCopyWith<_$UpdateTaskStatusImpl> get copyWith =>
      __$$UpdateTaskStatusImplCopyWithImpl<_$UpdateTaskStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(String title, String description, String category)
        addTask,
    required TResult Function(int index) removeTask,
    required TResult Function(int index) updateTaskStatus,
    required TResult Function(String category) filterBy,
  }) {
    return updateTaskStatus(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(String title, String description, String category)?
        addTask,
    TResult? Function(int index)? removeTask,
    TResult? Function(int index)? updateTaskStatus,
    TResult? Function(String category)? filterBy,
  }) {
    return updateTaskStatus?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(String title, String description, String category)?
        addTask,
    TResult Function(int index)? removeTask,
    TResult Function(int index)? updateTaskStatus,
    TResult Function(String category)? filterBy,
    required TResult orElse(),
  }) {
    if (updateTaskStatus != null) {
      return updateTaskStatus(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
    required TResult Function(UpdateTaskStatus value) updateTaskStatus,
    required TResult Function(FilterByCategoryEvent value) filterBy,
  }) {
    return updateTaskStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
    TResult? Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult? Function(FilterByCategoryEvent value)? filterBy,
  }) {
    return updateTaskStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    TResult Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult Function(FilterByCategoryEvent value)? filterBy,
    required TResult orElse(),
  }) {
    if (updateTaskStatus != null) {
      return updateTaskStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskStatus implements TaskEvent {
  const factory UpdateTaskStatus(final int index) = _$UpdateTaskStatusImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateTaskStatusImplCopyWith<_$UpdateTaskStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByCategoryEventImplCopyWith<$Res> {
  factory _$$FilterByCategoryEventImplCopyWith(
          _$FilterByCategoryEventImpl value,
          $Res Function(_$FilterByCategoryEventImpl) then) =
      __$$FilterByCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FilterByCategoryEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FilterByCategoryEventImpl>
    implements _$$FilterByCategoryEventImplCopyWith<$Res> {
  __$$FilterByCategoryEventImplCopyWithImpl(_$FilterByCategoryEventImpl _value,
      $Res Function(_$FilterByCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterByCategoryEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterByCategoryEventImpl implements FilterByCategoryEvent {
  const _$FilterByCategoryEventImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'TaskEvent.filterBy(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByCategoryEventImplCopyWith<_$FilterByCategoryEventImpl>
      get copyWith => __$$FilterByCategoryEventImplCopyWithImpl<
          _$FilterByCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTasks,
    required TResult Function(String title, String description, String category)
        addTask,
    required TResult Function(int index) removeTask,
    required TResult Function(int index) updateTaskStatus,
    required TResult Function(String category) filterBy,
  }) {
    return filterBy(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTasks,
    TResult? Function(String title, String description, String category)?
        addTask,
    TResult? Function(int index)? removeTask,
    TResult? Function(int index)? updateTaskStatus,
    TResult? Function(String category)? filterBy,
  }) {
    return filterBy?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTasks,
    TResult Function(String title, String description, String category)?
        addTask,
    TResult Function(int index)? removeTask,
    TResult Function(int index)? updateTaskStatus,
    TResult Function(String category)? filterBy,
    required TResult orElse(),
  }) {
    if (filterBy != null) {
      return filterBy(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasksEvent value) getTasks,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(RemoveTaskEvent value) removeTask,
    required TResult Function(UpdateTaskStatus value) updateTaskStatus,
    required TResult Function(FilterByCategoryEvent value) filterBy,
  }) {
    return filterBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasksEvent value)? getTasks,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(RemoveTaskEvent value)? removeTask,
    TResult? Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult? Function(FilterByCategoryEvent value)? filterBy,
  }) {
    return filterBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasksEvent value)? getTasks,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(RemoveTaskEvent value)? removeTask,
    TResult Function(UpdateTaskStatus value)? updateTaskStatus,
    TResult Function(FilterByCategoryEvent value)? filterBy,
    required TResult orElse(),
  }) {
    if (filterBy != null) {
      return filterBy(this);
    }
    return orElse();
  }
}

abstract class FilterByCategoryEvent implements TaskEvent {
  const factory FilterByCategoryEvent(final String category) =
      _$FilterByCategoryEventImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$FilterByCategoryEventImplCopyWith<_$FilterByCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Task> tasks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Task> tasks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Task> tasks) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TaskState {
  const factory _Loaded(final List<Task> tasks) = _$LoadedImpl;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
