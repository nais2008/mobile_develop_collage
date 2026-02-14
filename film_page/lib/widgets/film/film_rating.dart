// widgets/film/film_rating.dart
import 'package:flutter/material.dart';

class FilmRating extends StatefulWidget {
  const FilmRating({super.key});

  @override
  State<FilmRating> createState() => _FilmRatingState();
}

class _FilmRatingState extends State<FilmRating> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < _rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  _rating = index + 1;
                });
              },
            );
          }),
        ),
        Text(
          _rating == 0 ? '' : 'Ваш рейтинг: $_rating/5',
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
