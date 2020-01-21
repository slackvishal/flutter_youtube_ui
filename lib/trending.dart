import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Trending(),
    );
  }
}

class Trending extends StatefulWidget {
  Trending({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}