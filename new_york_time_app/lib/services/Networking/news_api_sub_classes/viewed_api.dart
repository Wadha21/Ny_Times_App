import 'package:dio/dio.dart';
import 'package:new_york_time_app/constants/api_string.dart';
import 'package:new_york_time_app/services/Networking/news_api_server.dart';

class Viewed extends NewsApiServer {
  Future<List<dynamic>> getNewsViewedP1() async {
    try {
      Response response = await dio.get(
        urlViewedP1,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getNewsViewedP7() async {
    try {
      Response response = await dio.get(
        urlViewedP7,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getNewsViewedP30() async {
    try {
      Response response = await dio.get(
        urlViewedP30,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
