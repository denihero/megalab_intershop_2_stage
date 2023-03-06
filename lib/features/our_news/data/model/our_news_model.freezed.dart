// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OurNewsModel _$OurNewsModelFromJson(Map<String, dynamic> json) {
  return _OurNewsModel.fromJson(json);
}

/// @nodoc
mixin _$OurNewsModel {
  List<ContentModel>? get content => throw _privateConstructorUsedError;
  int? get totalElements => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get numberOfElements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OurNewsModelCopyWith<OurNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurNewsModelCopyWith<$Res> {
  factory $OurNewsModelCopyWith(
          OurNewsModel value, $Res Function(OurNewsModel) then) =
      _$OurNewsModelCopyWithImpl<$Res, OurNewsModel>;
  @useResult
  $Res call(
      {List<ContentModel>? content,
      int? totalElements,
      int? totalPages,
      int? size,
      int? number,
      int? numberOfElements});
}

/// @nodoc
class _$OurNewsModelCopyWithImpl<$Res, $Val extends OurNewsModel>
    implements $OurNewsModelCopyWith<$Res> {
  _$OurNewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? totalElements = freezed,
    Object? totalPages = freezed,
    Object? size = freezed,
    Object? number = freezed,
    Object? numberOfElements = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentModel>?,
      totalElements: freezed == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfElements: freezed == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OurNewsModelCopyWith<$Res>
    implements $OurNewsModelCopyWith<$Res> {
  factory _$$_OurNewsModelCopyWith(
          _$_OurNewsModel value, $Res Function(_$_OurNewsModel) then) =
      __$$_OurNewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ContentModel>? content,
      int? totalElements,
      int? totalPages,
      int? size,
      int? number,
      int? numberOfElements});
}

/// @nodoc
class __$$_OurNewsModelCopyWithImpl<$Res>
    extends _$OurNewsModelCopyWithImpl<$Res, _$_OurNewsModel>
    implements _$$_OurNewsModelCopyWith<$Res> {
  __$$_OurNewsModelCopyWithImpl(
      _$_OurNewsModel _value, $Res Function(_$_OurNewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? totalElements = freezed,
    Object? totalPages = freezed,
    Object? size = freezed,
    Object? number = freezed,
    Object? numberOfElements = freezed,
  }) {
    return _then(_$_OurNewsModel(
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentModel>?,
      totalElements: freezed == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfElements: freezed == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OurNewsModel implements _OurNewsModel {
  const _$_OurNewsModel(
      {final List<ContentModel>? content,
      this.totalElements,
      this.totalPages,
      this.size,
      this.number,
      this.numberOfElements})
      : _content = content;

  factory _$_OurNewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OurNewsModelFromJson(json);

  final List<ContentModel>? _content;
  @override
  List<ContentModel>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalElements;
  @override
  final int? totalPages;
  @override
  final int? size;
  @override
  final int? number;
  @override
  final int? numberOfElements;

  @override
  String toString() {
    return 'OurNewsModel(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number, numberOfElements: $numberOfElements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OurNewsModel &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      totalElements,
      totalPages,
      size,
      number,
      numberOfElements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OurNewsModelCopyWith<_$_OurNewsModel> get copyWith =>
      __$$_OurNewsModelCopyWithImpl<_$_OurNewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OurNewsModelToJson(
      this,
    );
  }
}

abstract class _OurNewsModel implements OurNewsModel {
  const factory _OurNewsModel(
      {final List<ContentModel>? content,
      final int? totalElements,
      final int? totalPages,
      final int? size,
      final int? number,
      final int? numberOfElements}) = _$_OurNewsModel;

  factory _OurNewsModel.fromJson(Map<String, dynamic> json) =
      _$_OurNewsModel.fromJson;

  @override
  List<ContentModel>? get content;
  @override
  int? get totalElements;
  @override
  int? get totalPages;
  @override
  int? get size;
  @override
  int? get number;
  @override
  int? get numberOfElements;
  @override
  @JsonKey(ignore: true)
  _$$_OurNewsModelCopyWith<_$_OurNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
