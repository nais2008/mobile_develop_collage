import 'package:film_page/widgets/film/film_item.dart';
import 'package:flutter/material.dart';

class FilmSimilar extends StatelessWidget {
  FilmSimilar({super.key});

  List<Map<String, String>> films = [
    {
      "img":
          "https://kinopoiskapiunofficial.tech/images/posters/kinopoisk/258687.jpg",
      "name": "Интерстеллар",
      "year": "2014",
    },
    {
      "img":
          "https://kinopoiskapiunofficial.tech/images/posters/kinopoisk/447301.jpg",
      "name": "Начало",
      "year": "2010",
    },
    {
      "img":
          "https://kinopoiskapiunofficial.tech/images/posters/kinopoisk/301.jpg",
      "name": "Матрица",
      "year": "1999",
    },
    {
      "img":
          "https://kinopoiskapiunofficial.tech/images/posters/kinopoisk/111543.jpg",
      "name": "Темный рыцарь",
      "year": "2008",
    },
    {
      "img":
          "https://kinopoiskapiunofficial.tech/images/posters/kinopoisk/448.jpg",
      "name": "Форрест Гамп",
      "year": "1994",
    },
    {
      "img":
          "https://kinopoiskapiunofficial.tech/images/posters/kinopoisk/435.jpg",
      "name": "Зеленая миля",
      "year": "1999",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: films.length,
        itemBuilder: (_, index) {
          return SizedBox(
            width: 200,
            child: FilmItem(film: films[index]),
          );
        },
      ),
    );
  }
}
