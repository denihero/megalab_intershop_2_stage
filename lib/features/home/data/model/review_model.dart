import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megacom_second_stage/features/home/domain/entity/review_entity.dart';


part 'review_model.g.dart';
part 'review_model.freezed.dart';

@freezed
class ReviewModel extends ReviewEntity with _$ReviewModel {
  const factory ReviewModel({
    int? id,
    String? firstName,
    String? lastName,
    String? customerImage,
    String? reviewText,
    int? gateCategoryId,
    GateCategoryModel? gateCategory,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

@freezed
class GateCategoryModel extends GateCategoryEntity with _$GateCategoryModel {
  const factory GateCategoryModel({
    int? id,
    String? name,
  }) = _GateCategoryModel;

  factory GateCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$GateCategoryModelFromJson(json);
}
