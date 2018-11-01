import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toddler_books/bookshelf_route.dart';

class StartScreen extends StatefulWidget {
  @override
  StartScreenState createState() {
    return StartScreenState();
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
    return Scaffold(
      body: Container(
        color: Colors.amber[50],
        child: Center(
            child:
            Image(
          image: AssetImage('assets/images/start_title.png'),
        )
        ),
      ),
    );
  }

  void navigationPage() {

    Navigator.of(context).push(BookshelfRoute());

  }
}
