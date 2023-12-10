import 'package:dio/dio.dart';
import 'package:new_york_time_app/constants/api_string.dart';

abstract class NewsApiServer {
  late Dio dio;
  final urlEmailedP1 = "/svc/mostpopular/v2/emailed/1.json";
  final urlSharedP1 = "/svc/mostpopular/v2/shared/1.json";
  final urlViewedP1 = "/svc/mostpopular/v2/viewed/1.json";
  final urlEmailedP7 = "/svc/mostpopular/v2/emailed/7.json";
  final urlSharedP7 = "/svc/mostpopular/v2/shared/7.json";
  final urlViewedP7 = "/svc/mostpopular/v2/viewed/7.json";
  final urlEmailedP30 = "/svc/mostpopular/v2/emailed/30.json";
  final urlSharedP30 = "/svc/mostpopular/v2/shared/30.json";
  final urlViewedP30 = "/svc/mostpopular/v2/viewed/30.json";

  NewsApiServer() {
    BaseOptions options = BaseOptions(
      baseUrl: apiServer().urlApi,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 60),
      receiveTimeout: Duration(seconds: 60),
    );
    dio = Dio(options);
  }
}
