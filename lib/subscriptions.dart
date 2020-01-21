import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Subscriptions(),
    );
  }
}

class Subscriptions extends StatefulWidget {
  Subscriptions({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _SubscriptionsState createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}