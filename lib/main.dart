import 'package:flutter/material.dart';
import 'package:ui_challenges/widgets/rating_widget.dart';

import 'models/movies_models.dart';
import 'widgets/button_widget.dart';
import 'widgets/bg_image_widget.dart';
import 'screens/movie_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  double pageValue = 0.0;
  double slidePercentHor = 0.0;
  double slidePercentVer = 0.0;
  bool isNavigate = false;
  late PageController pageViewCtrl;

  @override
  void initState() {
    super.initState();
    pageViewCtrl = PageController(
      initialPage: currentIndex,
    )..addListener(() {
        setState(() {
          pageValue = pageViewCtrl.page!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final bgImages = movieList.reversed.toList();
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () async {
          isNavigate = true;
          setState(() {});

          final value = await Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  fullscreenDialog: true,
                  transitionDuration: const Duration(milliseconds: 800),
                  reverseTransitionDuration: const Duration(milliseconds: 500),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    var begin = const Offset(0.0, 1.0);
                    var end = Offset.zero;
                    const curve = Curves.easeInOutCubic;
                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    final curvedAnimation = CurvedAnimation(
                      parent: animation,
                      curve: curve,
                    );
                    //var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: tween.animate(curvedAnimation),
                      child: ClipRRect(
                          borderRadius: animation.value == 1
                              ? BorderRadius.zero
                              : const BorderRadius.vertical(
                                  top: Radius.circular(25)),
                          child:
                              FadeTransition(opacity: animation, child: child)),
                    );
                  },
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      MovieDetailScreen(
                          movieModel:
                              movieList[currentIndex + (pageValue.toInt())])));

          if (value == null) {
            isNavigate = false;
            setState(() {});
          }
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Stack(
                children: bgImages
                    .map((image) => BGImageWidget(
                          image: image.image,
                          index: image.index - 1,
                          color: image.bgColor,
                          pageValue: pageValue,
                        ))
                    .toList()),
            PageView.builder(
                controller: pageViewCtrl,
                itemCount: movieList.length,
                itemBuilder: (context, i) {
                  final item = movieList[i];
                  return Stack(
                    children: [
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeOutCubic,
                        top:
                            isNavigate ? ((height * 0.28) - 50) : height * 0.28,
                        left: width * 0.10,
                        right: width * 0.10,
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.5,
                              width: width / 1.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: Colors.white, width: 11),
                              ),
                              child: Image.asset(
                                'assets/images/${item.image}',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: Text(
                                item.name,
                                style: const TextStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: Text(
                                    '${item.rating} IMDB',
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                                RatingWidget(
                                    rating: item.rating, color: Colors.white)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            Stack(
                children: bgImages
                    .map((image) => ButtonWidget(
                          color: image.buttonColor,
                          index: image.index - 1,
                          pageValue: pageValue,
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
