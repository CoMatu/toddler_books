import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toddler_books/bookshelf.dart';

class StartScreen extends StatefulWidget{
  @override
  StartScreenState createState() {
    return new StartScreenState();
  }
}

class StartScreenState extends State<StartScreen> {

  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/start_background.png'),
                fit: BoxFit.fitWidth),
              ),
            ),
            Center(
              child: FlutterLogo(size: 150.0,),
            )
          ],
        ),
      ),
    );
  }

  void navigationPage() {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookShelf()),
    );

  }
}