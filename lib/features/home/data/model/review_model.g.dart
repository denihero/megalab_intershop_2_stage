// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewModel _$$_ReviewModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewModel(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      customerImage: json['customerImage'] as String?,
      reviewText: json['reviewText'] as String?,
      gateCategoryId: json['gateCategoryId'] as int?,
      gateCategory: json['gateCategory'] == null
          ? null
          : GateCategoryModel.fromJson(
              json['gateCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewModelToJson(_$_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'customerImage': instance.customerImage,
      'reviewText': instance.reviewText,
      'gateCategoryId': instance.gateCategoryId,
      'gateCategory': instance.gateCategory,
    };

_$_GateCategoryModel _$$_GateCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_GateCategoryModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GateCategoryModelToJson(
        _$_GateCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
