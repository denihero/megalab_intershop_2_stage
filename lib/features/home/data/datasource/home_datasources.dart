import 'package:dio/dio.dart';
import 'package:megacom_second_stage/core/network/dio_settings.dart';
import 'package:megacom_second_stage/features/home/data/model/review_model.dart';

abstract class HomeDataSources {
  Future<bool> sendApplication(String name, String phoneNumber, String message);
  Future<List<ReviewModel>> getUserFeedback();
}

class HomeDataSourcesImpl extends HomeDataSources {
  HomeDataSourcesImpl({required this.client});

  final DioSetting client;

  @override
  Future<bool> sendApplication(
      String name, String phoneNumber, String message) async {
    final response = await client.postFixed('/api/v1/public/orders', data: {
      'customerName': name,
      'customerPhone': phoneNumber,
      'message': message,
    });
    if (response.statusCode! >= 200) {
      return true;
    } else {
      print('error : ${response.data}');
      throw DioErrorType.badResponse;
    }
  }

  @override
  Future<List<ReviewModel>> getUserFeedback() async {
    List<ReviewModel> ls = [];

    final response = await client.getFixed('/api/v1/public/review');

    var review = response.data;
    if (response.statusCode! >= 200) {
      for (var reviewItem in review) {
        ls.add(ReviewModel.fromJson(reviewItem));
      }
      return ls;
    } else {
      throw DioErrorType.badResponse;
    }
  }
}
