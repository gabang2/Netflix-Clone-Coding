import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie>? movies;

  CarouselImage({Key? key, this.movies}) : super(key: key);

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  late String _currentKeyword;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    movies = widget.movies!;
    images = movies.map((m) => Image.asset('./images/' + m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: images,
            options: CarouselOptions(
              onPageChanged: (index, reason){
                setState(() {
                  _currentPage = index;
                  _currentKeyword = keywords[_currentPage];
                });
              }
            ),
          ),
          Container(
            child: Text(_currentKeyword),

          )
        ],
      ),
    );
  }
}
