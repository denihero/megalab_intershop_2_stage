import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

import '../../domain/usecases/our_news_usecases.dart';

part 'our_news_state.dart';

class OurNewsCubit extends Cubit<OurNewsState> {
  OurNewsCubit(this.ourNews) : super(OurNewsInitial());

  final OurNews ourNews;

  int page = 0;
  int count = 1;
  List<ContentModel> news = [];

  void getAllNews() async {
    emit(OurNewsLoading());
    final ourNewResponse = await ourNews.getAllNews(page,count);
    ourNewResponse.fold(
      (l) => emit(OurNewsError()),
      (ourNews) {
        news.addAll(ourNews.content!);

        emit(OurNewsSuccess(news));
      },
    );
  }
}
