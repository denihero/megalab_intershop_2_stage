part of 'detail_news_cubit.dart';

abstract class DetailNewsState extends Equatable {
  @override
  List<Object> get props => [];
}

class DetailNewsInitial extends DetailNewsState {}

class DetailNewsLoading extends DetailNewsState {}

class DetailNewsError extends DetailNewsState {}

class DetailNewsSuccess extends DetailNewsState {
  DetailNewsSuccess(this.detailNews);

  final OurNewsDetailModel detailNews;

  @override
  List<Object> get props => [detailNews];
}
