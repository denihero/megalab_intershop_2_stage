// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'our_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OurNewsModel _$$_OurNewsModelFromJson(Map<String, dynamic> json) =>
    _$_OurNewsModel(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ContentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalElements: json['totalElements'] as int?,
      totalPages: json['totalPages'] as int?,
      size: json['size'] as int?,
      number: json['number'] as int?,
      numberOfElements: json['numberOfElements'] as int?,
    );

Map<String, dynamic> _$$_OurNewsModelToJson(_$_OurNewsModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
    };
