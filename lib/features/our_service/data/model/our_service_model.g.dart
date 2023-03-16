// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'our_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OurServiceModel _$$_OurServiceModelFromJson(Map<String, dynamic> json) =>
    _$_OurServiceModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      advantages: (json['advantages'] as List<dynamic>?)
          ?.map((e) => AdvantageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OurServiceModelToJson(_$_OurServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'advantages': instance.advantages,
    };

_$_AdvantageModel _$$_AdvantageModelFromJson(Map<String, dynamic> json) =>
    _$_AdvantageModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_AdvantageModelToJson(_$_AdvantageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
    };
