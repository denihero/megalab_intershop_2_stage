part of 'get_review_cubit.dart';

abstract class GetReviewState extends Equatable {
  @override
  List<Object> get props => [];
}

class GetReviewInitial extends GetReviewState {}

class GetReviewLoading extends GetReviewState {}

class GetReviewError extends GetReviewState {}

class GetReviewSuccess extends GetReviewState {
  GetReviewSuccess({required this.userReviews});

  final List<ReviewModel> userReviews;

  @override
  List<Object> get props => [userReviews];
}
