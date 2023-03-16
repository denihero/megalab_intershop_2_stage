import 'package:dio/dio.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';

import '../model/our_news_model.dart';

abstract class OurNewsDataSources {
  Future<OurNewsModel> getAllNews();
}

class OurNewsDataSourceImpl extends OurNewsDataSources {
  OurNewsDataSourceImpl({required this.client});

  final DioSetting client;

  @override
  Future<OurNewsModel> getAllNews() async {
    final response = await client.getFixed('/news');
    if (response.statusCode! >= 200) {
      return OurNewsModel.fromJson(response.data);
    } else if (response.statusCode! >= 400) {
      throw DioErrorType.badResponse;
    }
    return OurNewsModel.fromJson(response.data);
  }
}
