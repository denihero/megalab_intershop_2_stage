import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';
import 'package:megacom_second_stage/features/home/domain/usecases/home_usecases.dart';

part 'get_review_state.dart';

class UserReviewCubit extends Cubit<GetReviewState> {
  UserReviewCubit(this.home) : super(GetReviewInitial());

  final HomeUseCases home;

  void getUserReviews() async {
    emit(GetReviewLoading());
    final reviewResponse = await home.getUserFeedback();
    reviewResponse.fold(
      (l) => emit(GetReviewError()),
      (userReviews) => emit(GetReviewSuccess(userReviews: userReviews)),
    );
  }
}
