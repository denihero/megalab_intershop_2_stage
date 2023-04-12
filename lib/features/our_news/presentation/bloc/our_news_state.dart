part of 'our_news_cubit.dart';

abstract class OurNewsState extends Equatable {
  @override
  List<Object> get props => [];
}

class OurNewsInitial extends OurNewsState {}

class OurNewsLoading extends OurNewsState {}

class OurNewsSuccess extends OurNewsState {
  OurNewsSuccess(this.ourNews);

  final List<ContentModel> ourNews;

  @override
  List<Object> get props => [ourNews];
}

class OurNewsError extends OurNewsState {}
