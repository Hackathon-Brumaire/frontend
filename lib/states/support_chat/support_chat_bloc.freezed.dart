// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupportChatEventTearOff {
  const _$SupportChatEventTearOff();

  OnConnect onConnect(int id) {
    return OnConnect(
      id,
    );
  }

  OnSocketEventChange onSocketEventChange(SocketData d) {
    return OnSocketEventChange(
      d,
    );
  }

  OnReply onReply(String id) {
    return OnReply(
      id,
    );
  }
}

/// @nodoc
const $SupportChatEvent = _$SupportChatEventTearOff();

/// @nodoc
mixin _$SupportChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportChatEventCopyWith<$Res> {
  factory $SupportChatEventCopyWith(
          SupportChatEvent value, $Res Function(SupportChatEvent) then) =
      _$SupportChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SupportChatEventCopyWithImpl<$Res>
    implements $SupportChatEventCopyWith<$Res> {
  _$SupportChatEventCopyWithImpl(this._value, this._then);

  final SupportChatEvent _value;
  // ignore: unused_field
  final $Res Function(SupportChatEvent) _then;
}

/// @nodoc
abstract class $OnConnectCopyWith<$Res> {
  factory $OnConnectCopyWith(OnConnect value, $Res Function(OnConnect) then) =
      _$OnConnectCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$OnConnectCopyWithImpl<$Res> extends _$SupportChatEventCopyWithImpl<$Res>
    implements $OnConnectCopyWith<$Res> {
  _$OnConnectCopyWithImpl(OnConnect _value, $Res Function(OnConnect) _then)
      : super(_value, (v) => _then(v as OnConnect));

  @override
  OnConnect get _value => super._value as OnConnect;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnConnect(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnConnect implements OnConnect {
  const _$OnConnect(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SupportChatEvent.onConnect(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnConnect &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $OnConnectCopyWith<OnConnect> get copyWith =>
      _$OnConnectCopyWithImpl<OnConnect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
  }) {
    return onConnect(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
  }) {
    return onConnect?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    required TResult orElse(),
  }) {
    if (onConnect != null) {
      return onConnect(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
  }) {
    return onConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
  }) {
    return onConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    required TResult orElse(),
  }) {
    if (onConnect != null) {
      return onConnect(this);
    }
    return orElse();
  }
}

abstract class OnConnect implements SupportChatEvent {
  const factory OnConnect(int id) = _$OnConnect;

  int get id;
  @JsonKey(ignore: true)
  $OnConnectCopyWith<OnConnect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSocketEventChangeCopyWith<$Res> {
  factory $OnSocketEventChangeCopyWith(
          OnSocketEventChange value, $Res Function(OnSocketEventChange) then) =
      _$OnSocketEventChangeCopyWithImpl<$Res>;
  $Res call({SocketData d});

  $SocketDataCopyWith<$Res> get d;
}

/// @nodoc
class _$OnSocketEventChangeCopyWithImpl<$Res>
    extends _$SupportChatEventCopyWithImpl<$Res>
    implements $OnSocketEventChangeCopyWith<$Res> {
  _$OnSocketEventChangeCopyWithImpl(
      OnSocketEventChange _value, $Res Function(OnSocketEventChange) _then)
      : super(_value, (v) => _then(v as OnSocketEventChange));

  @override
  OnSocketEventChange get _value => super._value as OnSocketEventChange;

  @override
  $Res call({
    Object? d = freezed,
  }) {
    return _then(OnSocketEventChange(
      d == freezed
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as SocketData,
    ));
  }

  @override
  $SocketDataCopyWith<$Res> get d {
    return $SocketDataCopyWith<$Res>(_value.d, (value) {
      return _then(_value.copyWith(d: value));
    });
  }
}

/// @nodoc

class _$OnSocketEventChange implements OnSocketEventChange {
  const _$OnSocketEventChange(this.d);

  @override
  final SocketData d;

  @override
  String toString() {
    return 'SupportChatEvent.onSocketEventChange(d: $d)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnSocketEventChange &&
            const DeepCollectionEquality().equals(other.d, d));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(d));

  @JsonKey(ignore: true)
  @override
  $OnSocketEventChangeCopyWith<OnSocketEventChange> get copyWith =>
      _$OnSocketEventChangeCopyWithImpl<OnSocketEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
  }) {
    return onSocketEventChange(d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
  }) {
    return onSocketEventChange?.call(d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    required TResult orElse(),
  }) {
    if (onSocketEventChange != null) {
      return onSocketEventChange(d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
  }) {
    return onSocketEventChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
  }) {
    return onSocketEventChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    required TResult orElse(),
  }) {
    if (onSocketEventChange != null) {
      return onSocketEventChange(this);
    }
    return orElse();
  }
}

abstract class OnSocketEventChange implements SupportChatEvent {
  const factory OnSocketEventChange(SocketData d) = _$OnSocketEventChange;

  SocketData get d;
  @JsonKey(ignore: true)
  $OnSocketEventChangeCopyWith<OnSocketEventChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnReplyCopyWith<$Res> {
  factory $OnReplyCopyWith(OnReply value, $Res Function(OnReply) then) =
      _$OnReplyCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$OnReplyCopyWithImpl<$Res> extends _$SupportChatEventCopyWithImpl<$Res>
    implements $OnReplyCopyWith<$Res> {
  _$OnReplyCopyWithImpl(OnReply _value, $Res Function(OnReply) _then)
      : super(_value, (v) => _then(v as OnReply));

  @override
  OnReply get _value => super._value as OnReply;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnReply(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnReply implements OnReply {
  const _$OnReply(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SupportChatEvent.onReply(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnReply &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $OnReplyCopyWith<OnReply> get copyWith =>
      _$OnReplyCopyWithImpl<OnReply>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
  }) {
    return onReply(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
  }) {
    return onReply?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    required TResult orElse(),
  }) {
    if (onReply != null) {
      return onReply(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
  }) {
    return onReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
  }) {
    return onReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    required TResult orElse(),
  }) {
    if (onReply != null) {
      return onReply(this);
    }
    return orElse();
  }
}

abstract class OnReply implements SupportChatEvent {
  const factory OnReply(String id) = _$OnReply;

  String get id;
  @JsonKey(ignore: true)
  $OnReplyCopyWith<OnReply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SupportChatStateTearOff {
  const _$SupportChatStateTearOff();

  _SupportChatState call(
      {required List<SocketData> history, required List<SocketData> feed}) {
    return _SupportChatState(
      history: history,
      feed: feed,
    );
  }
}

/// @nodoc
const $SupportChatState = _$SupportChatStateTearOff();

/// @nodoc
mixin _$SupportChatState {
  List<SocketData> get history => throw _privateConstructorUsedError;
  List<SocketData> get feed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportChatStateCopyWith<SupportChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportChatStateCopyWith<$Res> {
  factory $SupportChatStateCopyWith(
          SupportChatState value, $Res Function(SupportChatState) then) =
      _$SupportChatStateCopyWithImpl<$Res>;
  $Res call({List<SocketData> history, List<SocketData> feed});
}

/// @nodoc
class _$SupportChatStateCopyWithImpl<$Res>
    implements $SupportChatStateCopyWith<$Res> {
  _$SupportChatStateCopyWithImpl(this._value, this._then);

  final SupportChatState _value;
  // ignore: unused_field
  final $Res Function(SupportChatState) _then;

  @override
  $Res call({
    Object? history = freezed,
    Object? feed = freezed,
  }) {
    return _then(_value.copyWith(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<SocketData>,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<SocketData>,
    ));
  }
}

/// @nodoc
abstract class _$SupportChatStateCopyWith<$Res>
    implements $SupportChatStateCopyWith<$Res> {
  factory _$SupportChatStateCopyWith(
          _SupportChatState value, $Res Function(_SupportChatState) then) =
      __$SupportChatStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SocketData> history, List<SocketData> feed});
}

/// @nodoc
class __$SupportChatStateCopyWithImpl<$Res>
    extends _$SupportChatStateCopyWithImpl<$Res>
    implements _$SupportChatStateCopyWith<$Res> {
  __$SupportChatStateCopyWithImpl(
      _SupportChatState _value, $Res Function(_SupportChatState) _then)
      : super(_value, (v) => _then(v as _SupportChatState));

  @override
  _SupportChatState get _value => super._value as _SupportChatState;

  @override
  $Res call({
    Object? history = freezed,
    Object? feed = freezed,
  }) {
    return _then(_SupportChatState(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<SocketData>,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<SocketData>,
    ));
  }
}

/// @nodoc

class _$_SupportChatState extends _SupportChatState {
  const _$_SupportChatState({required this.history, required this.feed})
      : super._();

  @override
  final List<SocketData> history;
  @override
  final List<SocketData> feed;

  @override
  String toString() {
    return 'SupportChatState(history: $history, feed: $feed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupportChatState &&
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
  _$SupportChatStateCopyWith<_SupportChatState> get copyWith =>
      __$SupportChatStateCopyWithImpl<_SupportChatState>(this, _$identity);
}

abstract class _SupportChatState extends SupportChatState {
  const factory _SupportChatState(
      {required List<SocketData> history,
      required List<SocketData> feed}) = _$_SupportChatState;
  const _SupportChatState._() : super._();

  @override
  List<SocketData> get history;
  @override
  List<SocketData> get feed;
  @override
  @JsonKey(ignore: true)
  _$SupportChatStateCopyWith<_SupportChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
