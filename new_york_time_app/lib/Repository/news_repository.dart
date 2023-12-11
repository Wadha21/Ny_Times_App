import 'package:new_york_time_app/services/Networking/news_api_sub_classes/emailed_api.dart';
import 'package:new_york_time_app/services/Networking/news_api_sub_classes/shared_api.dart';
import 'package:new_york_time_app/services/Networking/news_api_sub_classes/viewed_api.dart';

class NewRepository {
//-----------Emailed
  Future<List<dynamic>> getNewsEmailedP1() async {
    final news = await Emailed().getNewsEmailedP1();

    return news;
  }

  Future<List<dynamic>> getNewsEmailedP7() async {
    final news = await Emailed().getNewsEmailedP7();
    return news;
  }

  Future<List<dynamic>> getNewsEmailedP30() async {
    final news = await Emailed().getNewsEmailedP30();
    return news;
  }

//-----------Shared
  Future<List<dynamic>> getNewsSharedP1() async {
    final news = await Shared().getNewsSharedP1();
    return news;
  }

  Future<List<dynamic>> getNewsSharedP7() async {
    final news = await Shared().getNewsSharedP7();
    return news;
  }

  Future<List<dynamic>> getNewsSharedP30() async {
    final news = await Shared().getNewsSharedP30();
    return news;
  }

  //-----------Viewed
  Future<List<dynamic>> getNewsViewedP1() async {
    final news = await Viewed().getNewsViewedP1();
    return news;
  }

  Future<List<dynamic>> getNewsViewedP7() async {
    final news = await Viewed().getNewsViewedP7();
    return news;
  }

  Future<List<dynamic>> getNewsViewedP30() async {
    final news = await Viewed().getNewsViewedP30();
    return news;
  }
}