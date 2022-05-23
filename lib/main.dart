import 'package:flutter/material.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.pink,
          accentColor: Colors.white
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(child: Center(child: Text('1'),),),
              Container(child: Center(child: Text('2'),),),
              Container(child: Center(child: Text('3'),),),
              Container(child: Center(child: Text('4'),),),
            ]
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),

    );
  }
}
