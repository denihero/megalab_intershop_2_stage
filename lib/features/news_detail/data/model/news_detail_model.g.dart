// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OurNewsDetailModel _$$_OurNewsDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_OurNewsDetailModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      coverImage: json['coverImage'] as String?,
      text: json['text'] as String?,
      contentImage: json['contentImage'] as String?,
    );

Map<String, dynamic> _$$_OurNewsDetailModelToJson(
        _$_OurNewsDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverImage': instance.coverImage,
      'text': instance.text,
      'contentImage': instance.contentImage,
    };
