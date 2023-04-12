// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_works_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OurWorksModel _$OurWorksModelFromJson(Map<String, dynamic> json) {
  return _OurWorksModel.fromJson(json);
}

/// @nodoc
mixin _$OurWorksModel {
  List<ContentModel>? get content => throw _privateConstructorUsedError;
  int? get totalElements => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get numberOfElements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OurWorksModelCopyWith<OurWorksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurWorksModelCopyWith<$Res> {
  factory $OurWorksModelCopyWith(
          OurWorksModel value, $Res Function(OurWorksModel) then) =
      _$OurWorksModelCopyWithImpl<$Res, OurWorksModel>;
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
class _$OurWorksModelCopyWithImpl<$Res, $Val extends OurWorksModel>
    implements $OurWorksModelCopyWith<$Res> {
  _$OurWorksModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_OurWorksModelCopyWith<$Res>
    implements $OurWorksModelCopyWith<$Res> {
  factory _$$_OurWorksModelCopyWith(
          _$_OurWorksModel value, $Res Function(_$_OurWorksModel) then) =
      __$$_OurWorksModelCopyWithImpl<$Res>;
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
class __$$_OurWorksModelCopyWithImpl<$Res>
    extends _$OurWorksModelCopyWithImpl<$Res, _$_OurWorksModel>
    implements _$$_OurWorksModelCopyWith<$Res> {
  __$$_OurWorksModelCopyWithImpl(
      _$_OurWorksModel _value, $Res Function(_$_OurWorksModel) _then)
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
    return _then(_$_OurWorksModel(
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
class _$_OurWorksModel implements _OurWorksModel {
  const _$_OurWorksModel(
      {final List<ContentModel>? content,
      this.totalElements,
      this.totalPages,
      this.size,
      this.number,
      this.numberOfElements})
      : _content = content;

  factory _$_OurWorksModel.fromJson(Map<String, dynamic> json) =>
      _$$_OurWorksModelFromJson(json);

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
    return 'OurWorksModel(content: $content, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number, numberOfElements: $numberOfElements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OurWorksModel &&
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
  _$$_OurWorksModelCopyWith<_$_OurWorksModel> get copyWith =>
      __$$_OurWorksModelCopyWithImpl<_$_OurWorksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OurWorksModelToJson(
      this,
    );
  }
}

abstract class _OurWorksModel implements OurWorksModel {
  const factory _OurWorksModel(
      {final List<ContentModel>? content,
      final int? totalElements,
      final int? totalPages,
      final int? size,
      final int? number,
      final int? numberOfElements}) = _$_OurWorksModel;

  factory _OurWorksModel.fromJson(Map<String, dynamic> json) =
      _$_OurWorksModel.fromJson;

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
  _$$_OurWorksModelCopyWith<_$_OurWorksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentModel _$ContentModelFromJson(Map<String, dynamic> json) {
  return _ContentModel.fromJson(json);
}

/// @nodoc
mixin _$ContentModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverImage')
  String? get coverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentModelCopyWith<ContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentModelCopyWith<$Res> {
  factory $ContentModelCopyWith(
          ContentModel value, $Res Function(ContentModel) then) =
      _$ContentModelCopyWithImpl<$Res, ContentModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'coverImage') String? coverImage,
      @JsonKey(name: 'image') String? image,
      String? title,
      String? text});
}

/// @nodoc
class _$ContentModelCopyWithImpl<$Res, $Val extends ContentModel>
    implements $ContentModelCopyWith<$Res> {
  _$ContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coverImage = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentModelCopyWith<$Res>
    implements $ContentModelCopyWith<$Res> {
  factory _$$_ContentModelCopyWith(
          _$_ContentModel value, $Res Function(_$_ContentModel) then) =
      __$$_ContentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'coverImage') String? coverImage,
      @JsonKey(name: 'image') String? image,
      String? title,
      String? text});
}

/// @nodoc
class __$$_ContentModelCopyWithImpl<$Res>
    extends _$ContentModelCopyWithImpl<$Res, _$_ContentModel>
    implements _$$_ContentModelCopyWith<$Res> {
  __$$_ContentModelCopyWithImpl(
      _$_ContentModel _value, $Res Function(_$_ContentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coverImage = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_ContentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentModel implements _ContentModel {
  const _$_ContentModel(
      {this.id,
      @JsonKey(name: 'coverImage') this.coverImage,
      @JsonKey(name: 'image') this.image,
      this.title,
      this.text});

  factory _$_ContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContentModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'coverImage')
  final String? coverImage;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  final String? title;
  @override
  final String? text;

  @override
  String toString() {
    return 'ContentModel(id: $id, coverImage: $coverImage, image: $image, title: $title, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, coverImage, image, title, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentModelCopyWith<_$_ContentModel> get copyWith =>
      __$$_ContentModelCopyWithImpl<_$_ContentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentModelToJson(
      this,
    );
  }
}

abstract class _ContentModel implements ContentModel {
  const factory _ContentModel(
      {final int? id,
      @JsonKey(name: 'coverImage') final String? coverImage,
      @JsonKey(name: 'image') final String? image,
      final String? title,
      final String? text}) = _$_ContentModel;

  factory _ContentModel.fromJson(Map<String, dynamic> json) =
      _$_ContentModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'coverImage')
  String? get coverImage;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  String? get title;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_ContentModelCopyWith<_$_ContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
