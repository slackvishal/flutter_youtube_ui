import 'package:flutter/material.dart';
import 'package:flutter_shortui_youtube/home.dart';
import 'package:flutter_shortui_youtube/inbox.dart';
import 'package:flutter_shortui_youtube/library.dart';
import 'package:flutter_shortui_youtube/subscriptions.dart';
import 'package:flutter_shortui_youtube/trending.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Trending(),
    Subscriptions(),
    Inbox(),
    Library(),
  ];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
                icon: Icon(Icons.home),
            title: Text("Home", style: TextStyle(
              fontSize: 12.0
            ),)),
            new BottomNavigationBarItem(
                icon: Icon(Icons.trending_up),
                title: Text("Trending", style: TextStyle(
                    fontSize: 12.0
                ),)),
            new BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                title: Text("Subscriptions", style: TextStyle(
                    fontSize: 12.0
                ),)),
            new BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                title: Text("Inbox", style: TextStyle(
                    fontSize: 12.0
                ),)),
            new BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                title: Text("Library", style: TextStyle(
                    fontSize: 12.0
                ),)),
          ]),

    );
  }
}