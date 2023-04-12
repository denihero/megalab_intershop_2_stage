import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megacom_second_stage/features/our_works/domain/entity/our_works_entity.dart';

part 'our_works_model.freezed.dart';
part 'our_works_model.g.dart';

@freezed
class OurWorksModel extends OurWorksEntity with _$OurWorksModel {
  const factory OurWorksModel({
    List<ContentModel>? content,
    int? totalElements,
    int? totalPages,
    int? size,
    int? number,
    int? numberOfElements,
  }) = _OurWorksModel;

  factory OurWorksModel.fromJson(Map<String, dynamic> json) =>
      _$OurWorksModelFromJson(json);
}

@freezed
class ContentModel extends ContentEntity with _$ContentModel {
  const factory ContentModel({
    int? id,
    @JsonKey(name: 'coverImage') String? coverImage,
    @JsonKey(name: 'image') String? image,
    String? title,
    String? text,
  }) = _ContentModel;

  factory ContentModel.fromJson(Map<String, dynamic> json) =>
      _$ContentModelFromJson(json);
}
