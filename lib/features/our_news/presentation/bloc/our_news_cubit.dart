import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:megacom_second_stage/features/our_news/data/model/our_news_model.dart';

import '../../domain/usecases/our_news_usecases.dart';

part 'our_news_state.dart';

class OurNewsCubit extends Cubit<OurNewsState> {
  OurNewsCubit(this.ourNews) : super(OurNewsInitial());

  final OurNews ourNews;

  void getAllNews() async {
    emit(OurNewsLoading());
    final ourNewResponse = await ourNews.getAllNews();
    ourNewResponse.fold(
      (l) => emit(OurNewsError()),
      (ourNews) => emit(OurNewsSuccess(ourNews)),
    );
  }
}
