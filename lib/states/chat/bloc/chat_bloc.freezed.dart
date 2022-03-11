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

  OnTransportToVisio onTransportToVisio() {
    return const OnTransportToVisio();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
    required TResult Function() onTransportToVisio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
    required TResult Function(OnTransportToVisio value) onTransportToVisio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
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
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
    required TResult Function() onTransportToVisio,
  }) {
    return onConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
  }) {
    return onConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
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
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
    required TResult Function(OnTransportToVisio value) onTransportToVisio,
  }) {
    return onConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
  }) {
    return onConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
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
abstract class $OnSocketEventChangeCopyWith<$Res> {
  factory $OnSocketEventChangeCopyWith(
          OnSocketEventChange value, $Res Function(OnSocketEventChange) then) =
      _$OnSocketEventChangeCopyWithImpl<$Res>;
  $Res call({SocketData d});

  $SocketDataCopyWith<$Res> get d;
}

/// @nodoc
class _$OnSocketEventChangeCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
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
    return 'ChatEvent.onSocketEventChange(d: $d)';
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
    required TResult Function() onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
    required TResult Function() onTransportToVisio,
  }) {
    return onSocketEventChange(d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
  }) {
    return onSocketEventChange?.call(d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
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
    required TResult Function(OnTransportToVisio value) onTransportToVisio,
  }) {
    return onSocketEventChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
  }) {
    return onSocketEventChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
    required TResult orElse(),
  }) {
    if (onSocketEventChange != null) {
      return onSocketEventChange(this);
    }
    return orElse();
  }
}

abstract class OnSocketEventChange implements ChatEvent {
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
class _$OnReplyCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
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
    return 'ChatEvent.onReply(id: $id)';
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
    required TResult Function() onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
    required TResult Function() onTransportToVisio,
  }) {
    return onReply(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
  }) {
    return onReply?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
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
    required TResult Function(OnTransportToVisio value) onTransportToVisio,
  }) {
    return onReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
  }) {
    return onReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
    required TResult orElse(),
  }) {
    if (onReply != null) {
      return onReply(this);
    }
    return orElse();
  }
}

abstract class OnReply implements ChatEvent {
  const factory OnReply(String id) = _$OnReply;

  String get id;
  @JsonKey(ignore: true)
  $OnReplyCopyWith<OnReply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnTransportToVisioCopyWith<$Res> {
  factory $OnTransportToVisioCopyWith(
          OnTransportToVisio value, $Res Function(OnTransportToVisio) then) =
      _$OnTransportToVisioCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnTransportToVisioCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnTransportToVisioCopyWith<$Res> {
  _$OnTransportToVisioCopyWithImpl(
      OnTransportToVisio _value, $Res Function(OnTransportToVisio) _then)
      : super(_value, (v) => _then(v as OnTransportToVisio));

  @override
  OnTransportToVisio get _value => super._value as OnTransportToVisio;
}

/// @nodoc

class _$OnTransportToVisio implements OnTransportToVisio {
  const _$OnTransportToVisio();

  @override
  String toString() {
    return 'ChatEvent.onTransportToVisio()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnTransportToVisio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnect,
    required TResult Function(SocketData d) onSocketEventChange,
    required TResult Function(String id) onReply,
    required TResult Function() onTransportToVisio,
  }) {
    return onTransportToVisio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
  }) {
    return onTransportToVisio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnect,
    TResult Function(SocketData d)? onSocketEventChange,
    TResult Function(String id)? onReply,
    TResult Function()? onTransportToVisio,
    required TResult orElse(),
  }) {
    if (onTransportToVisio != null) {
      return onTransportToVisio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnect value) onConnect,
    required TResult Function(OnSocketEventChange value) onSocketEventChange,
    required TResult Function(OnReply value) onReply,
    required TResult Function(OnTransportToVisio value) onTransportToVisio,
  }) {
    return onTransportToVisio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
  }) {
    return onTransportToVisio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnect value)? onConnect,
    TResult Function(OnSocketEventChange value)? onSocketEventChange,
    TResult Function(OnReply value)? onReply,
    TResult Function(OnTransportToVisio value)? onTransportToVisio,
    required TResult orElse(),
  }) {
    if (onTransportToVisio != null) {
      return onTransportToVisio(this);
    }
    return orElse();
  }
}

abstract class OnTransportToVisio implements ChatEvent {
  const factory OnTransportToVisio() = _$OnTransportToVisio;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<SocketData> history,
      required List<SocketData> feed,
      String? roomId}) {
    return _ChatState(
      history: history,
      feed: feed,
      roomId: roomId,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<SocketData> get history => throw _privateConstructorUsedError;
  List<SocketData> get feed => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call({List<SocketData> history, List<SocketData> feed, String? roomId});
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
    Object? roomId = freezed,
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
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SocketData> history, List<SocketData> feed, String? roomId});
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
    Object? roomId = freezed,
  }) {
    return _then(_ChatState(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<SocketData>,
      feed: feed == freezed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<SocketData>,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState({required this.history, required this.feed, this.roomId});

  @override
  final List<SocketData> history;
  @override
  final List<SocketData> feed;
  @override
  final String? roomId;

  @override
  String toString() {
    return 'ChatState(history: $history, feed: $feed, roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatState &&
            const DeepCollectionEquality().equals(other.history, history) &&
            const DeepCollectionEquality().equals(other.feed, feed) &&
            const DeepCollectionEquality().equals(other.roomId, roomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(history),
      const DeepCollectionEquality().hash(feed),
      const DeepCollectionEquality().hash(roomId));

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<SocketData> history,
      required List<SocketData> feed,
      String? roomId}) = _$_ChatState;

  @override
  List<SocketData> get history;
  @override
  List<SocketData> get feed;
  @override
  String? get roomId;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
