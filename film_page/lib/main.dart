// main.dart
import 'package:film_page/widgets/film/film_page.dart';
import 'package:flutter/material.dart';
import 'package:film_page/ui/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Гран Туризмо")),
          backgroundColor: Colors.lightBlueAccent.shade700,
        ),
        body: const FilmPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
