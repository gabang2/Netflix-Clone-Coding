import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';

import '../widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Movie> movies = [
    Movie.fromMap(
        {'title': '우리들의 믈루스', 'keyword': '사랑/로맨스/판타지', 'poster': 'movie_1.png', 'like': false})
  ];

  @override
  void initState() {
    // 위젯이 생성될 때 처음으로 호출되는 메서드
    super.initState(); //반드시 super.initState()를 호출해야 한다.(super는 부모 클래스의 메서드 및 파라미터를 불러오는 것)
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            CarouselImage(movies: movies), //가장 위
            TopBar() // 가장 밑
          ],
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'images/netflix.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('TV프로그램', style: TextStyle(fontSize: 14))),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: Text('영화', style: TextStyle(fontSize: 14))),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text('내가 찜한 콘텐츠', style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}
