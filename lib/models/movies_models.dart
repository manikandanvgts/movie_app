import 'package:flutter/material.dart';

class MovieModel {
  final String name;
  final String image;
  final List<String> generes;
  final String description;
  final double rating;
  final int index;
  final Color bgColor;
  final Color buttonColor;
  final List<Actor> actors;

  MovieModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.generes,
      required this.description,
      required this.index,
      required this.bgColor,
      required this.actors,
      required this.buttonColor});
}

class Actor {
  final String name;
  final String image;

  Actor({required this.name, required this.image});
}

List<MovieModel> movieList = [
  MovieModel(
      index: 1,
      image: 'st.jpg',
      generes: ['Action', 'Drama', 'Scifi'],
      bgColor: const Color(0xFFE691A3),
      buttonColor: const Color(0xFFbc3a55),
      name: 'Stranger Things',
      actors: [
        Actor(name: 'Millie Bobby Brown', image: 'st.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'st.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'st.jpg'),
      ],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      rating: 3.4),
  MovieModel(
      index: 2,
      generes: ['Action', 'Drama', 'Scifi'],
      image: 'mh.jpeg',
      bgColor: const Color(0xFF325C4E),
      buttonColor: const Color(0xFF1F956E),
      name: 'Money Heist',
      actors: [
        Actor(name: 'Millie Bobby Brown', image: 'mh.jpeg'),
        Actor(name: 'Millie Bobby Brown', image: 'mh.jpeg'),
        Actor(name: 'Millie Bobby Brown', image: 'mh.jpeg'),
        Actor(name: 'Millie Bobby Brown', image: 'mh.jpeg'),
      ],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      rating: 4.1),
  MovieModel(
      index: 3,
      image: 'got.jpg',
      generes: ['Action', 'Drama', 'Scifi'],
      bgColor: Colors.black,
      buttonColor: const Color(0xFF838383),
      name: 'GOT Series',
      actors: [
        Actor(name: 'Millie Bobby Brown', image: 'got.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'got.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'got.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'got.jpg'),
      ],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      rating: 3.9),
  MovieModel(
      index: 4,
      image: 'avengers.jpg',
      generes: ['Action', 'Drama', 'Scifi'],
      bgColor: const Color(0xFF1C0876),
      buttonColor: const Color(0xFF6353AC),
      name: 'Avengers Series',
      actors: [
        Actor(name: 'Millie Bobby Brown', image: 'avengers.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'avengers.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'avengers.jpg'),
        Actor(name: 'Millie Bobby Brown', image: 'avengers.jpg'),
      ],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      rating: 4.5),
];
