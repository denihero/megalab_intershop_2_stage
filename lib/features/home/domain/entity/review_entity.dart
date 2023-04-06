class ReviewEntity {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? customerImage;
  final String? reviewText;
  final int? gateCategoryId;
  final GateCategoryEntity? gateCategory;

  ReviewEntity({
    this.gateCategory,
    this.id,
    this.firstName,
    this.lastName,
    this.customerImage,
    this.reviewText,
    this.gateCategoryId,
  });
}

class GateCategoryEntity {
  final int? id;
  final String? name;

  GateCategoryEntity({this.id, this.name});
}
