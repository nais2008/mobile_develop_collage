import 'package:flutter/material.dart';
import 'package:film_page/ui/theme/theme.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Гран Туризмо"))),
        body: ListView(
          children: [
            Image.network(
              "https://avatars.mds.yandex.net/get-kinopoisk-image/10671298/eec1f557-cf1c-4a90-bce5-4fcd242132ba/600x900",
              width: 300,
              height: 450,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
