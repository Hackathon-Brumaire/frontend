// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'socket_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocketDataTearOff {
  const _$SocketDataTearOff();

  _SocketData call(
      {int? id,
      String? title,
      String? text,
      DateTime? createdAt,
      List<NextAnswerData>? nextAnswers,
      dynamic media,
      EventType? type}) {
    return _SocketData(
      id: id,
      title: title,
      text: text,
      createdAt: createdAt,
      nextAnswers: nextAnswers,
      media: media,
      type: type,
    );
  }
}

/// @nodoc
const $SocketData = _$SocketDataTearOff();

/// @nodoc
mixin _$SocketData {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<NextAnswerData>? get nextAnswers => throw _privateConstructorUsedError;
  dynamic get media => throw _privateConstructorUsedError;
  EventType? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketDataCopyWith<SocketData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketDataCopyWith<$Res> {
  factory $SocketDataCopyWith(
          SocketData value, $Res Function(SocketData) then) =
      _$SocketDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? text,
      DateTime? createdAt,
      List<NextAnswerData>? nextAnswers,
      dynamic media,
      EventType? type});
}

/// @nodoc
class _$SocketDataCopyWithImpl<$Res> implements $SocketDataCopyWith<$Res> {
  _$SocketDataCopyWithImpl(this._value, this._then);

  final SocketData _value;
  // ignore: unused_field
  final $Res Function(SocketData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? nextAnswers = freezed,
    Object? media = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextAnswers: nextAnswers == freezed
          ? _value.nextAnswers
          : nextAnswers // ignore: cast_nullable_to_non_nullable
              as List<NextAnswerData>?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType?,
    ));
  }
}

/// @nodoc
abstract class _$SocketDataCopyWith<$Res> implements $SocketDataCopyWith<$Res> {
  factory _$SocketDataCopyWith(
          _SocketData value, $Res Function(_SocketData) then) =
      __$SocketDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? text,
      DateTime? createdAt,
      List<NextAnswerData>? nextAnswers,
      dynamic media,
      EventType? type});
}

/// @nodoc
class __$SocketDataCopyWithImpl<$Res> extends _$SocketDataCopyWithImpl<$Res>
    implements _$SocketDataCopyWith<$Res> {
  __$SocketDataCopyWithImpl(
      _SocketData _value, $Res Function(_SocketData) _then)
      : super(_value, (v) => _then(v as _SocketData));

  @override
  _SocketData get _value => super._value as _SocketData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? nextAnswers = freezed,
    Object? media = freezed,
    Object? type = freezed,
  }) {
    return _then(_SocketData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextAnswers: nextAnswers == freezed
          ? _value.nextAnswers
          : nextAnswers // ignore: cast_nullable_to_non_nullable
              as List<NextAnswerData>?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType?,
    ));
  }
}

/// @nodoc

class _$_SocketData extends _SocketData {
  const _$_SocketData(
      {this.id,
      this.title,
      this.text,
      this.createdAt,
      this.nextAnswers,
      this.media,
      this.type})
      : super._();

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? text;
  @override
  final DateTime? createdAt;
  @override
  final List<NextAnswerData>? nextAnswers;
  @override
  final dynamic media;
  @override
  final EventType? type;

  @override
  String toString() {
    return 'SocketData(id: $id, title: $title, text: $text, createdAt: $createdAt, nextAnswers: $nextAnswers, media: $media, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.nextAnswers, nextAnswers) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(nextAnswers),
      const DeepCollectionEquality().hash(media),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$SocketDataCopyWith<_SocketData> get copyWith =>
      __$SocketDataCopyWithImpl<_SocketData>(this, _$identity);
}

abstract class _SocketData extends SocketData {
  const factory _SocketData(
      {int? id,
      String? title,
      String? text,
      DateTime? createdAt,
      List<NextAnswerData>? nextAnswers,
      dynamic media,
      EventType? type}) = _$_SocketData;
  const _SocketData._() : super._();

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get text;
  @override
  DateTime? get createdAt;
  @override
  List<NextAnswerData>? get nextAnswers;
  @override
  dynamic get media;
  @override
  EventType? get type;
  @override
  @JsonKey(ignore: true)
  _$SocketDataCopyWith<_SocketData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NextAnswerDataTearOff {
  const _$NextAnswerDataTearOff();

  _NextAnswerData call(
      {required int id,
      required String title,
      required bool selected,
      required String? videoUrl}) {
    return _NextAnswerData(
      id: id,
      title: title,
      selected: selected,
      videoUrl: videoUrl,
    );
  }
}

/// @nodoc
const $NextAnswerData = _$NextAnswerDataTearOff();

/// @nodoc
mixin _$NextAnswerData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NextAnswerDataCopyWith<NextAnswerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextAnswerDataCopyWith<$Res> {
  factory $NextAnswerDataCopyWith(
          NextAnswerData value, $Res Function(NextAnswerData) then) =
      _$NextAnswerDataCopyWithImpl<$Res>;
  $Res call({int id, String title, bool selected, String? videoUrl});
}

/// @nodoc
class _$NextAnswerDataCopyWithImpl<$Res>
    implements $NextAnswerDataCopyWith<$Res> {
  _$NextAnswerDataCopyWithImpl(this._value, this._then);

  final NextAnswerData _value;
  // ignore: unused_field
  final $Res Function(NextAnswerData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? selected = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NextAnswerDataCopyWith<$Res>
    implements $NextAnswerDataCopyWith<$Res> {
  factory _$NextAnswerDataCopyWith(
          _NextAnswerData value, $Res Function(_NextAnswerData) then) =
      __$NextAnswerDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, bool selected, String? videoUrl});
}

/// @nodoc
class __$NextAnswerDataCopyWithImpl<$Res>
    extends _$NextAnswerDataCopyWithImpl<$Res>
    implements _$NextAnswerDataCopyWith<$Res> {
  __$NextAnswerDataCopyWithImpl(
      _NextAnswerData _value, $Res Function(_NextAnswerData) _then)
      : super(_value, (v) => _then(v as _NextAnswerData));

  @override
  _NextAnswerData get _value => super._value as _NextAnswerData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? selected = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_NextAnswerData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NextAnswerData extends _NextAnswerData {
  const _$_NextAnswerData(
      {required this.id,
      required this.title,
      required this.selected,
      required this.videoUrl})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final bool selected;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'NextAnswerData(id: $id, title: $title, selected: $selected, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NextAnswerData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(videoUrl));

  @JsonKey(ignore: true)
  @override
  _$NextAnswerDataCopyWith<_NextAnswerData> get copyWith =>
      __$NextAnswerDataCopyWithImpl<_NextAnswerData>(this, _$identity);
}

abstract class _NextAnswerData extends NextAnswerData {
  const factory _NextAnswerData(
      {required int id,
      required String title,
      required bool selected,
      required String? videoUrl}) = _$_NextAnswerData;
  const _NextAnswerData._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  bool get selected;
  @override
  String? get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$NextAnswerDataCopyWith<_NextAnswerData> get copyWith =>
      throw _privateConstructorUsedError;
}
