import 'package:flutter/material.dart';
import '../models/movies_models.dart';
import '../widgets/rating_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.5),
      body: Stack(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: height,
                width: double.infinity,
                color: Colors.transparent,
              )),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: height / 3,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieModel.name,
                          style: const TextStyle(
                              fontSize: 22, color: Colors.black),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${movieModel.rating} IDMB',
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                            const SizedBox(width: 5),
                            RatingWidget(
                                rating: movieModel.rating,
                                color: movieModel.buttonColor)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                            children: movieModel.generes
                                .map((e) => Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 5),
                                      margin: const EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          color: movieModel.buttonColor
                                              .withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              color: movieModel.buttonColor)),
                                      child: Text(
                                        e,
                                        style: TextStyle(
                                            color: movieModel.buttonColor),
                                      ),
                                    ))
                                .toList()),
                        const SizedBox(height: 12),
                        const Text(
                          'Introduction',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          movieModel.description,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black),
                        ),
                        InkWell(
                          radius: 150,
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'View More',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          ),
                        ),
                        const Text(
                          'Actors',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                              itemCount: movieModel.actors.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, i) {
                                final actorItem = movieModel.actors[i];
                                return Container(
                                  width: 100,
                                  padding: EdgeInsets.only(
                                      left: i == 0 ? 2 : 8, right: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/${actorItem.image}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: MaterialButton(
                      minWidth: 450,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      color: movieModel.buttonColor,
                      textColor: Colors.white,
                      child: const Text('Watch Now'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
