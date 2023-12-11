import 'package:dio/dio.dart';
import 'package:new_york_time_app/constants/api_string.dart';
import 'package:new_york_time_app/services/Networking/news_api_server.dart';

class Shared extends NewsApiServer{
  
  Future<List<dynamic>> getNewsSharedP1() async {
  
    try {
      Response response = await dio.get(
        urlSharedP1,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data['results'];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getNewsSharedP7() async {
    try {
      Response response = await dio.get(
        urlSharedP7,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data['results'];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getNewsSharedP30() async {
  
    try {
      Response response = await dio.get(
        urlSharedP30,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data['results'];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
