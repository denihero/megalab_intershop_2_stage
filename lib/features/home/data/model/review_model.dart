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
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
