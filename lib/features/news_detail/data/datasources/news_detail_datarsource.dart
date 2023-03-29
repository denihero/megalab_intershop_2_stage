import 'package:dio/dio.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:megacom_second_stage/features/news_detail/data/model/news_detail_model.dart';


abstract class NewsDetailDataSource {
  Future<OurNewsDetailModel> getDetailNews(int id);
}

class NewsDetailDataSourceImpl extends NewsDetailDataSource {
  NewsDetailDataSourceImpl({required this.client});

  final DioSetting client;

  @override
  Future<OurNewsDetailModel> getDetailNews(int id) async{
    final response = await client.getFixed('/api/v1/public/news/$id');
    if (response.statusCode! >= 200) {
      return OurNewsDetailModel.fromJson(response.data);
    } else if (response.statusCode! >= 400) {
      throw DioErrorType.badResponse;
    }
    return OurNewsDetailModel.fromJson(response.data);
  }
}
