import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), 
    );
  }
}


class Movie {
  final String title;
  final String description;
  final String imageUrl;
  final String releaseDate;
  final double rating;

  Movie({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.releaseDate,
    required this.rating,
  });
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Movie> movies = [
      Movie(
        title: 'Frozen',
        description: 'Two sisters in a magical icy adventure.',
        imageUrl: 'lib/img/mmm.webp',
        releaseDate: 'November 27, 2013',
        rating: 8.0,
      ),
      Movie(
        title: 'Molan',
        description: 'Strong pretty women.',
        imageUrl: 'lib/img/m.jpeg',
        releaseDate: 'June 19, 2015',
        rating: 8.2,
      ),
      Movie(
        title: 'Moana',
        description: 'A brave girl sails across the ocean to save her island.',
        imageUrl: 'lib/img/mm.webp',
        releaseDate: 'November 23, 2018',
        rating: 7.6,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Movies App")),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            leading: Image.asset(
              movie.imageUrl,
              width: 60,
              height: 90,
              fit: BoxFit.cover,
            ),
            title: Text(movie.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.description),
                Text(movie.releaseDate),
              ],
            ),
            trailing: Text(movie.rating.toString()),
          );
        },
      ),
    );
  }
}

