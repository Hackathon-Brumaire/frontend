// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  OnConnect onConnect() {
    return const OnConnect();
  }

  OnChange onChange(dynamic d) {
    return OnChange(
      d,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnect,
    required TResult Function(dynamic d) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(dynamic d)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(dynamic d)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnChange value) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnChange value)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnChange value)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $OnConnectCopyWith<$Res> {
  factory $OnConnectCopyWith(OnConnect value, $Res Function(OnConnect) then) =
      _$OnConnectCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnConnectCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnConnectCopyWith<$Res> {
  _$OnConnectCopyWithImpl(OnConnect _value, $Res Function(OnConnect) _then)
      : super(_value, (v) => _then(v as OnConnect));

  @override
  OnConnect get _value => super._value as OnConnect;
}

/// @nodoc

class _$OnConnect implements OnConnect {
  const _$OnConnect();

  @override
  String toString() {
    return 'ChatEvent.onConnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnConnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnect,
    required TResult Function(dynamic d) onChange,
  }) {
    return onConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(dynamic d)? onChange,
  }) {
    return onConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(dynamic d)? onChange,
    required TResult orElse(),
  }) {
    if (onConnect != null) {
      return onConnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnChange value) onChange,
  }) {
    return onConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnChange value)? onChange,
  }) {
    return onConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (onConnect != null) {
      return onConnect(this);
    }
    return orElse();
  }
}

abstract class OnConnect implements ChatEvent {
  const factory OnConnect() = _$OnConnect;
}

/// @nodoc
abstract class $OnChangeCopyWith<$Res> {
  factory $OnChangeCopyWith(OnChange value, $Res Function(OnChange) then) =
      _$OnChangeCopyWithImpl<$Res>;
  $Res call({dynamic d});
}

/// @nodoc
class _$OnChangeCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnChangeCopyWith<$Res> {
  _$OnChangeCopyWithImpl(OnChange _value, $Res Function(OnChange) _then)
      : super(_value, (v) => _then(v as OnChange));

  @override
  OnChange get _value => super._value as OnChange;

  @override
  $Res call({
    Object? d = freezed,
  }) {
    return _then(OnChange(
      d == freezed
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OnChange implements OnChange {
  const _$OnChange(this.d);

  @override
  final dynamic d;

  @override
  String toString() {
    return 'ChatEvent.onChange(d: $d)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnChange &&
            const DeepCollectionEquality().equals(other.d, d));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(d));

  @JsonKey(ignore: true)
  @override
  $OnChangeCopyWith<OnChange> get copyWith =>
      _$OnChangeCopyWithImpl<OnChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnect,
    required TResult Function(dynamic d) onChange,
  }) {
    return onChange(d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(dynamic d)? onChange,
  }) {
    return onChange?.call(d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(dynamic d)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnChange value) onChange,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnChange value)? onChange,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class OnChange implements ChatEvent {
  const factory OnChange(dynamic d) = _$OnChange;

  dynamic get d;
  @JsonKey(ignore: true)
  $OnChangeCopyWith<OnChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<dynamic> history, required List<dynamic> feed}) {
    return _ChatState(
      history: history,
      feed: feed,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<dynamic> get history => throw _privateConstructorUsedError;
  List<dynamic> get feed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> history, List<dynamic> feed});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? history = freezed,
    Object? feed = freezed,
  }) {
    return _then(_value.copyWith(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> history, List<dynamic> feed});
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object? history = freezed,
    Object? feed = freezed,
  }) {
    return _then(_ChatState(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState({required this.history, required this.feed});

  @override
  final List<dynamic> history;
  @override
  final List<dynamic> feed;

  @override
  String toString() {
    return 'ChatState(history: $history, feed: $feed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatState &&
            const DeepCollectionEquality().equals(other.history, history) &&
            const DeepCollectionEquality().equals(other.feed, feed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(history),
      const DeepCollectionEquality().hash(feed));

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<dynamic> history,
      required List<dynamic> feed}) = _$_ChatState;

  @override
  List<dynamic> get history;
  @override
  List<dynamic> get feed;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
