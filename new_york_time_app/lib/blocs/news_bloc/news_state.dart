import 'package:new_york_time_app/Models/news_model.dart';

abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsSuccessState extends NewsState {
  final List<New> newsList;
  NewsSuccessState(this.newsList);
}

class ErrorState extends NewsState {
  final String message;
  ErrorState(this.message);
}
