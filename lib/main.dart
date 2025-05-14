import 'package:flutter/material.dart';
import 'package:movie_info_app/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black12,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black12),
      ),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
