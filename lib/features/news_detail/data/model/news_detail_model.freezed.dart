// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OurNewsDetailModel _$OurNewsDetailModelFromJson(Map<String, dynamic> json) {
  return _OurNewsDetailModel.fromJson(json);
}

/// @nodoc
mixin _$OurNewsDetailModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get contentImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OurNewsDetailModelCopyWith<OurNewsDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurNewsDetailModelCopyWith<$Res> {
  factory $OurNewsDetailModelCopyWith(
          OurNewsDetailModel value, $Res Function(OurNewsDetailModel) then) =
      _$OurNewsDetailModelCopyWithImpl<$Res, OurNewsDetailModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? coverImage,
      String? text,
      String? contentImage});
}

/// @nodoc
class _$OurNewsDetailModelCopyWithImpl<$Res, $Val extends OurNewsDetailModel>
    implements $OurNewsDetailModelCopyWith<$Res> {
  _$OurNewsDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? text = freezed,
    Object? contentImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      contentImage: freezed == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OurNewsDetailModelCopyWith<$Res>
    implements $OurNewsDetailModelCopyWith<$Res> {
  factory _$$_OurNewsDetailModelCopyWith(_$_OurNewsDetailModel value,
          $Res Function(_$_OurNewsDetailModel) then) =
      __$$_OurNewsDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? coverImage,
      String? text,
      String? contentImage});
}

/// @nodoc
class __$$_OurNewsDetailModelCopyWithImpl<$Res>
    extends _$OurNewsDetailModelCopyWithImpl<$Res, _$_OurNewsDetailModel>
    implements _$$_OurNewsDetailModelCopyWith<$Res> {
  __$$_OurNewsDetailModelCopyWithImpl(
      _$_OurNewsDetailModel _value, $Res Function(_$_OurNewsDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverImage = freezed,
    Object? text = freezed,
    Object? contentImage = freezed,
  }) {
    return _then(_$_OurNewsDetailModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      contentImage: freezed == contentImage
          ? _value.contentImage
          : contentImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OurNewsDetailModel implements _OurNewsDetailModel {
  const _$_OurNewsDetailModel(
      {this.id, this.title, this.coverImage, this.text, this.contentImage});

  factory _$_OurNewsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_OurNewsDetailModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? coverImage;
  @override
  final String? text;
  @override
  final String? contentImage;

  @override
  String toString() {
    return 'OurNewsDetailModel(id: $id, title: $title, coverImage: $coverImage, text: $text, contentImage: $contentImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OurNewsDetailModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.contentImage, contentImage) ||
                other.contentImage == contentImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, coverImage, text, contentImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OurNewsDetailModelCopyWith<_$_OurNewsDetailModel> get copyWith =>
      __$$_OurNewsDetailModelCopyWithImpl<_$_OurNewsDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OurNewsDetailModelToJson(
      this,
    );
  }
}

abstract class _OurNewsDetailModel implements OurNewsDetailModel {
  const factory _OurNewsDetailModel(
      {final int? id,
      final String? title,
      final String? coverImage,
      final String? text,
      final String? contentImage}) = _$_OurNewsDetailModel;

  factory _OurNewsDetailModel.fromJson(Map<String, dynamic> json) =
      _$_OurNewsDetailModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get coverImage;
  @override
  String? get text;
  @override
  String? get contentImage;
  @override
  @JsonKey(ignore: true)
  _$$_OurNewsDetailModelCopyWith<_$_OurNewsDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
