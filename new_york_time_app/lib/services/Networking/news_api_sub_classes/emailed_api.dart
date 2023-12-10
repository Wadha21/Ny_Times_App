import 'package:dio/dio.dart';
import 'package:new_york_time_app/constants/api_string.dart';
import 'package:new_york_time_app/services/Networking/news_api_server.dart';

class Emailed extends NewsApiServer{
  
  Future<List<dynamic>> getNewsEmailedP1() async {
    
    try {
      Response response = await dio.get(
        urlEmailedP1,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getNewsEmailedP7() async {
    
    try {
      Response response = await dio.get(
        urlEmailedP7,
        queryParameters: {'api-key': apiServer().apiKey},
      );
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> getNewsEmailedP30() async {
    
    try {
      Response response = await dio.get(
        urlEmailedP30,
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
