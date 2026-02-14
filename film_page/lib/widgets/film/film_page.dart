import 'package:film_page/widgets/film/film_rating.dart';
import 'package:film_page/widgets/film/film_similar.dart';
import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  const FilmPage({super.key});

  @override
  State<FilmPage> createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  bool isFavorite = false;

  void onAddFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFavorite ? "Вы добавили в избранное" : "Вы удалили из избранного",
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 50,
            right: 50,
            bottom: 20,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://avatars.mds.yandex.net/get-kinopoisk-image/10671298/eec1f557-cf1c-4a90-bce5-4fcd242132ba/600x900",
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Center(
          child: Text(
            "Gran Turismo",
            style: const TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: IconButton(
            onPressed: onAddFavorite,
            color: isFavorite ? Colors.red : null,
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            iconSize: 40,
          ),
        ),
        const FilmRating(),
        Builder(
          builder: (context) => FilmSimilar(),
        ),
      ],
    );
  }
}
