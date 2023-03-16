// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OurServiceModel _$OurServiceModelFromJson(Map<String, dynamic> json) {
  return _OurServiceModel.fromJson(json);
}

/// @nodoc
mixin _$OurServiceModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<AdvantageModel>? get advantages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OurServiceModelCopyWith<OurServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurServiceModelCopyWith<$Res> {
  factory $OurServiceModelCopyWith(
          OurServiceModel value, $Res Function(OurServiceModel) then) =
      _$OurServiceModelCopyWithImpl<$Res, OurServiceModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? description,
      List<AdvantageModel>? advantages});
}

/// @nodoc
class _$OurServiceModelCopyWithImpl<$Res, $Val extends OurServiceModel>
    implements $OurServiceModelCopyWith<$Res> {
  _$OurServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? advantages = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      advantages: freezed == advantages
          ? _value.advantages
          : advantages // ignore: cast_nullable_to_non_nullable
              as List<AdvantageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OurServiceModelCopyWith<$Res>
    implements $OurServiceModelCopyWith<$Res> {
  factory _$$_OurServiceModelCopyWith(
          _$_OurServiceModel value, $Res Function(_$_OurServiceModel) then) =
      __$$_OurServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? description,
      List<AdvantageModel>? advantages});
}

/// @nodoc
class __$$_OurServiceModelCopyWithImpl<$Res>
    extends _$OurServiceModelCopyWithImpl<$Res, _$_OurServiceModel>
    implements _$$_OurServiceModelCopyWith<$Res> {
  __$$_OurServiceModelCopyWithImpl(
      _$_OurServiceModel _value, $Res Function(_$_OurServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? advantages = freezed,
  }) {
    return _then(_$_OurServiceModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      advantages: freezed == advantages
          ? _value._advantages
          : advantages // ignore: cast_nullable_to_non_nullable
              as List<AdvantageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OurServiceModel implements _OurServiceModel {
  const _$_OurServiceModel(
      {this.id,
      this.name,
      this.image,
      this.description,
      final List<AdvantageModel>? advantages})
      : _advantages = advantages;

  factory _$_OurServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_OurServiceModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? description;
  final List<AdvantageModel>? _advantages;
  @override
  List<AdvantageModel>? get advantages {
    final value = _advantages;
    if (value == null) return null;
    if (_advantages is EqualUnmodifiableListView) return _advantages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OurServiceModel(id: $id, name: $name, image: $image, description: $description, advantages: $advantages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OurServiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._advantages, _advantages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description,
      const DeepCollectionEquality().hash(_advantages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OurServiceModelCopyWith<_$_OurServiceModel> get copyWith =>
      __$$_OurServiceModelCopyWithImpl<_$_OurServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OurServiceModelToJson(
      this,
    );
  }
}

abstract class _OurServiceModel implements OurServiceModel {
  const factory _OurServiceModel(
      {final int? id,
      final String? name,
      final String? image,
      final String? description,
      final List<AdvantageModel>? advantages}) = _$_OurServiceModel;

  factory _OurServiceModel.fromJson(Map<String, dynamic> json) =
      _$_OurServiceModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get description;
  @override
  List<AdvantageModel>? get advantages;
  @override
  @JsonKey(ignore: true)
  _$$_OurServiceModelCopyWith<_$_OurServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvantageModel _$AdvantageModelFromJson(Map<String, dynamic> json) {
  return _AdvantageModel.fromJson(json);
}

/// @nodoc
mixin _$AdvantageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvantageModelCopyWith<AdvantageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvantageModelCopyWith<$Res> {
  factory $AdvantageModelCopyWith(
          AdvantageModel value, $Res Function(AdvantageModel) then) =
      _$AdvantageModelCopyWithImpl<$Res, AdvantageModel>;
  @useResult
  $Res call({int? id, String? title, String? text});
}

/// @nodoc
class _$AdvantageModelCopyWithImpl<$Res, $Val extends AdvantageModel>
    implements $AdvantageModelCopyWith<$Res> {
  _$AdvantageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvantageModelCopyWith<$Res>
    implements $AdvantageModelCopyWith<$Res> {
  factory _$$_AdvantageModelCopyWith(
          _$_AdvantageModel value, $Res Function(_$_AdvantageModel) then) =
      __$$_AdvantageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? text});
}

/// @nodoc
class __$$_AdvantageModelCopyWithImpl<$Res>
    extends _$AdvantageModelCopyWithImpl<$Res, _$_AdvantageModel>
    implements _$$_AdvantageModelCopyWith<$Res> {
  __$$_AdvantageModelCopyWithImpl(
      _$_AdvantageModel _value, $Res Function(_$_AdvantageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_AdvantageModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_AdvantageModel implements _AdvantageModel {
  const _$_AdvantageModel({this.id, this.title, this.text});

  factory _$_AdvantageModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdvantageModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? text;

  @override
  String toString() {
    return 'AdvantageModel(id: $id, title: $title, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvantageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvantageModelCopyWith<_$_AdvantageModel> get copyWith =>
      __$$_AdvantageModelCopyWithImpl<_$_AdvantageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvantageModelToJson(
      this,
    );
  }
}

abstract class _AdvantageModel implements AdvantageModel {
  const factory _AdvantageModel(
      {final int? id,
      final String? title,
      final String? text}) = _$_AdvantageModel;

  factory _AdvantageModel.fromJson(Map<String, dynamic> json) =
      _$_AdvantageModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_AdvantageModelCopyWith<_$_AdvantageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
