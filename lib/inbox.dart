import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Inbox(),
    );
  }
}

class Inbox extends StatefulWidget {
  Inbox({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}