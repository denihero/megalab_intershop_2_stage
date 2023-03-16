import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:megacom_second_stage/features/news_detail/data/model/news_detail_model.dart';
import 'package:megacom_second_stage/features/news_detail/domain/usecases/detail_news_usecase.dart';

part 'detail_news_state.dart';

class DetailNewsCubit extends Cubit<DetailNewsState> {
  DetailNewsCubit(this.detailNews) : super(DetailNewsInitial());

  final DetailNews detailNews;

  void getDetailNews(int id) async {
    emit(DetailNewsLoading());
    final detailNewsResponse = await detailNews.getDetailNews(id);
    print(detailNewsResponse);
    detailNewsResponse.fold(
      (l) => emit(DetailNewsError()),
      (detailNews) => emit(DetailNewsSuccess(detailNews)),
    );
  }
}
