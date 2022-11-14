import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

// (a) Display a third screen with the names of the movie director, the movie stars, the
//duration of the movie and two different ratings of the movie.

class LongClick extends StatelessWidget {
  final String name;
  final String director;
  final String actors;
  final String duration;
  final String rating;

  LongClick(
      {Key? key,
      required this.name,
      required this.director,
      required this.actors,
      required this.duration,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Overview'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
            child: Text(
                "Director: $director\n Actors: $actors\n Duration: $duration\n Rating: $rating")),
      ),
    );
  }
}
