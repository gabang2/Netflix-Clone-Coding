import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Container(
          height: 60,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: [
              Tab(icon: Icon(Icons.home, size: 10), child: Text('홈')),
              Tab(icon: Icon(Icons.search, size: 10), child: Text('검색')),
              Tab(icon: Icon(Icons.save_alt, size: 10), child: Text('저장한 컨텐츠 목록')),
              Tab(icon: Icon(Icons.list, size: 10), child: Text('더보기')),
            ],
          ),
        )
    );
  }
}
