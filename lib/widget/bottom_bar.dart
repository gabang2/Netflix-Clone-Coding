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
            Tab(icon: Icon(Icons.home), child: Text('홈'),),
            Tab(icon: Icon(Icons.search_sharp), child: Text('검색'),),
            Tab(icon: Icon(Icons.save_alt), child: Text('저장한 콘텐츠 목록'),),
            Tab(icon: Icon(Icons.my_library_add), child: Text('그외 '),),
          ],
        ),
      ),
    );
  }
}
