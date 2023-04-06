// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return _ReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewModel {
  int? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get customerImage => throw _privateConstructorUsedError;
  String? get reviewText => throw _privateConstructorUsedError;
  int? get gateCategoryId => throw _privateConstructorUsedError;
  GateCategoryModel? get gateCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
          ReviewModel value, $Res Function(ReviewModel) then) =
      _$ReviewModelCopyWithImpl<$Res, ReviewModel>;
  @useResult
  $Res call(
      {int? id,
      String? firstName,
      String? lastName,
      String? customerImage,
      String? reviewText,
      int? gateCategoryId,
      GateCategoryModel? gateCategory});

  $GateCategoryModelCopyWith<$Res>? get gateCategory;
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res, $Val extends ReviewModel>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? customerImage = freezed,
    Object? reviewText = freezed,
    Object? gateCategoryId = freezed,
    Object? gateCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerImage: freezed == customerImage
          ? _value.customerImage
          : customerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewText: freezed == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String?,
      gateCategoryId: freezed == gateCategoryId
          ? _value.gateCategoryId
          : gateCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      gateCategory: freezed == gateCategory
          ? _value.gateCategory
          : gateCategory // ignore: cast_nullable_to_non_nullable
              as GateCategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GateCategoryModelCopyWith<$Res>? get gateCategory {
    if (_value.gateCategory == null) {
      return null;
    }

    return $GateCategoryModelCopyWith<$Res>(_value.gateCategory!, (value) {
      return _then(_value.copyWith(gateCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewModelCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$$_ReviewModelCopyWith(
          _$_ReviewModel value, $Res Function(_$_ReviewModel) then) =
      __$$_ReviewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? firstName,
      String? lastName,
      String? customerImage,
      String? reviewText,
      int? gateCategoryId,
      GateCategoryModel? gateCategory});

  @override
  $GateCategoryModelCopyWith<$Res>? get gateCategory;
}

/// @nodoc
class __$$_ReviewModelCopyWithImpl<$Res>
    extends _$ReviewModelCopyWithImpl<$Res, _$_ReviewModel>
    implements _$$_ReviewModelCopyWith<$Res> {
  __$$_ReviewModelCopyWithImpl(
      _$_ReviewModel _value, $Res Function(_$_ReviewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? customerImage = freezed,
    Object? reviewText = freezed,
    Object? gateCategoryId = freezed,
    Object? gateCategory = freezed,
  }) {
    return _then(_$_ReviewModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerImage: freezed == customerImage
          ? _value.customerImage
          : customerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewText: freezed == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String?,
      gateCategoryId: freezed == gateCategoryId
          ? _value.gateCategoryId
          : gateCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      gateCategory: freezed == gateCategory
          ? _value.gateCategory
          : gateCategory // ignore: cast_nullable_to_non_nullable
              as GateCategoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewModel implements _ReviewModel {
  const _$_ReviewModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.customerImage,
      this.reviewText,
      this.gateCategoryId,
      this.gateCategory});

  factory _$_ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewModelFromJson(json);

  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? customerImage;
  @override
  final String? reviewText;
  @override
  final int? gateCategoryId;
  @override
  final GateCategoryModel? gateCategory;

  @override
  String toString() {
    return 'ReviewModel(id: $id, firstName: $firstName, lastName: $lastName, customerImage: $customerImage, reviewText: $reviewText, gateCategoryId: $gateCategoryId, gateCategory: $gateCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.customerImage, customerImage) ||
                other.customerImage == customerImage) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText) &&
            (identical(other.gateCategoryId, gateCategoryId) ||
                other.gateCategoryId == gateCategoryId) &&
            (identical(other.gateCategory, gateCategory) ||
                other.gateCategory == gateCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      customerImage, reviewText, gateCategoryId, gateCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewModelCopyWith<_$_ReviewModel> get copyWith =>
      __$$_ReviewModelCopyWithImpl<_$_ReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewModelToJson(
      this,
    );
  }
}

abstract class _ReviewModel implements ReviewModel {
  const factory _ReviewModel(
      {final int? id,
      final String? firstName,
      final String? lastName,
      final String? customerImage,
      final String? reviewText,
      final int? gateCategoryId,
      final GateCategoryModel? gateCategory}) = _$_ReviewModel;

  factory _ReviewModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewModel.fromJson;

  @override
  int? get id;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get customerImage;
  @override
  String? get reviewText;
  @override
  int? get gateCategoryId;
  @override
  GateCategoryModel? get gateCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewModelCopyWith<_$_ReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GateCategoryModel _$GateCategoryModelFromJson(Map<String, dynamic> json) {
  return _GateCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$GateCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GateCategoryModelCopyWith<GateCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GateCategoryModelCopyWith<$Res> {
  factory $GateCategoryModelCopyWith(
          GateCategoryModel value, $Res Function(GateCategoryModel) then) =
      _$GateCategoryModelCopyWithImpl<$Res, GateCategoryModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GateCategoryModelCopyWithImpl<$Res, $Val extends GateCategoryModel>
    implements $GateCategoryModelCopyWith<$Res> {
  _$GateCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GateCategoryModelCopyWith<$Res>
    implements $GateCategoryModelCopyWith<$Res> {
  factory _$$_GateCategoryModelCopyWith(_$_GateCategoryModel value,
          $Res Function(_$_GateCategoryModel) then) =
      __$$_GateCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_GateCategoryModelCopyWithImpl<$Res>
    extends _$GateCategoryModelCopyWithImpl<$Res, _$_GateCategoryModel>
    implements _$$_GateCategoryModelCopyWith<$Res> {
  __$$_GateCategoryModelCopyWithImpl(
      _$_GateCategoryModel _value, $Res Function(_$_GateCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_GateCategoryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GateCategoryModel implements _GateCategoryModel {
  const _$_GateCategoryModel({this.id, this.name});

  factory _$_GateCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GateCategoryModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GateCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GateCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GateCategoryModelCopyWith<_$_GateCategoryModel> get copyWith =>
      __$$_GateCategoryModelCopyWithImpl<_$_GateCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GateCategoryModelToJson(
      this,
    );
  }
}

abstract class _GateCategoryModel implements GateCategoryModel {
  const factory _GateCategoryModel({final int? id, final String? name}) =
      _$_GateCategoryModel;

  factory _GateCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_GateCategoryModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GateCategoryModelCopyWith<_$_GateCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
