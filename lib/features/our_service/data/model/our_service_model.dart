import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megacom_second_stage/features/our_service/domain/entity/our_service_entity.dart';

part 'our_service_model.g.dart';
part 'our_service_model.freezed.dart';

@freezed
class OurServiceModel extends OurServiceEntity with _$OurServiceModel {
  const factory OurServiceModel({
    int? id,
    String? name,
    String? image,
    String? description,
    List<AdvantageModel>? advantages,
  }) = _OurServiceModel;

  factory OurServiceModel.fromJson(Map<String, dynamic> json) =>
      _$OurServiceModelFromJson(json);
}

@freezed
class AdvantageModel extends AdvantageEntity with _$AdvantageModel {
  const factory AdvantageModel({
    int? id,
    String? title,
    String? text,
  }) = _AdvantageModel;

  factory AdvantageModel.fromJson(Map<String, dynamic> json) =>
      _$AdvantageModelFromJson(json);
}
