import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ResultCard(),
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 200,
      child: Stack(
        children: [
          Padding(padding: EdgeInsets.all(6)),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 6, color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://images.pexels.com/photos/61143/pexels-photo-61143.jpeg?cs=srgb&dl=pexels-juan-salamanca-61143.jpg&fm=jpg',
                fit: BoxFit.cover,
                width: 430,
                height: 200,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: CarouselWidget(),
          ),
        ],
      ),
    );
  }
}

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
       

      ], // Add your carousel items here
      options: CarouselOptions(
        height: 180,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        enlargeFactor: 1,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              foregroundDecoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.1, 0.5, 0.9],
                  )),
              width: 395,
              height: 250,
            );
  }
}
