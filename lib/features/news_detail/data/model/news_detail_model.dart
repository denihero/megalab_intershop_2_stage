import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megacom_second_stage/features/news_detail/domain/entity/news_detail_entity.dart';

part 'news_detail_model.freezed.dart';
part 'news_detail_model.g.dart';

@freezed
class OurNewsDetailModel extends OurNewsDetailsEntity
    with _$OurNewsDetailModel {
  const factory OurNewsDetailModel({
    int? id,
    String? title,
    String? coverImage,
    String? text,
    String? contentImage
  }) = _OurNewsDetailModel;

  factory OurNewsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OurNewsDetailModelFromJson(json);
}
