import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:new_york_time_app/Repository/news_repository.dart';
import 'package:new_york_time_app/Screens/HomeScreen/home_screen.dart';

final getIt = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MainApp());
}

void setup() {
  getIt.registerSingleton<NewRepository>(NewRepository());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
