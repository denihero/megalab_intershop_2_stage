import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megacom_second_stage/features/our_news/domain/entity/our_news_entity.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

part 'our_news_model.freezed.dart';
part 'our_news_model.g.dart';

@freezed
class OurNewsModel extends OurNewsEntity with _$OurNewsModel{
  const factory OurNewsModel({
    List<ContentModel>? content,
    int? totalElements,
    int? totalPages,
    int? size,
    int? number,
    int? numberOfElements,
  }) = _OurNewsModel;

  factory OurNewsModel.fromJson(Map<String, dynamic> json) =>
      _$OurNewsModelFromJson(json);
}