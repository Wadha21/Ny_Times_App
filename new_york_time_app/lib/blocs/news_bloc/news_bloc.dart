import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_event.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_state.dart';


class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial()) {
   on<NewsEvent>((event, emit) {
    // TODO: implement event handler
   });
  }
}
