import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_york_time_app/Models/news_model.dart';
import 'package:new_york_time_app/Repository/news_repository.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_event.dart';
import 'package:new_york_time_app/blocs/news_bloc/news_state.dart';
import '../../main.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial()) {
    on<getEmailed1P1DataEvent>(getEmailed1days);
    on<getEmailed1P7DataEvent>(getEmailed7days);
    on<getEmailed1P30DataEvent>(getEmailed30days);
    //----------Shared
    on<getSharedP1DataEvent>(getShared1days);
    on<getSharedP7DataEvent>(getShared7days);
    on<getSharedP30DataEvent>(getShared30days);

    // //----------Viewed
    on<getViewedP1DataEvent>(getViewed1days);
    on<getViewedP7DataEvent>(getViewed7days);
    on<getViewedP30DataEvent>(getViewed30days);
  }
  //--------Emailed
  //-----------1
  FutureOr<void> getEmailed1days(
      getEmailed1P1DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final List<New> newsData =
          (await NewRepository().getNewsEmailedP1()).map((dynamic item) {
        final newObject = New.fromJson(item);
        print(newObject);
        return newObject;
      }).toList();
      print(newsData);
      emit(NewsSuccessState(newsData));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  //-----------7
  FutureOr<void> getEmailed7days(
      getEmailed1P7DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsEmailedP7();
      print(newsData);
      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  //-----------30
  FutureOr<void> getEmailed30days(
      getEmailed1P30DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsEmailedP30();

      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

//----------Shared
  FutureOr<void> getShared1days(
      getSharedP1DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final List<New> newsData =
          (await NewRepository().getNewsSharedP1()).map((dynamic item) {
        final newObject = New.fromJson(item);
        print(newObject);
        return newObject;
      }).toList();
      print(newsData);
      emit(NewsSuccessState(newsData));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  //-----------7
  FutureOr<void> getShared7days(
      getSharedP7DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsSharedP7();
      print(newsData);
      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  //-----------30
  FutureOr<void> getShared30days(
      getSharedP30DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsSharedP30();

      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

//----------Viewed
  FutureOr<void> getViewed1days(
      getViewedP1DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsViewedP1();

      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  //-----------7
  FutureOr<void> getViewed7days(
      getViewedP7DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsViewedP7();
      print(newsData);
      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  //-----------30
  FutureOr<void> getViewed30days(
      getViewedP30DataEvent path, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final newsData = await getIt.get<NewRepository>().getNewsViewedP30();

      emit(NewsSuccessState(newsData.map((e) => New.fromJson(e)).toList()));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }
}
