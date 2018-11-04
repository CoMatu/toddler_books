import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
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

    await FirebaseApp.configure(
      name: 'todbook',
      options: Platform.isIOS
          ? const FirebaseOptions(
        //TODO сделать настройки для айос
          googleAppID: 'xxxx',
          gcmSenderID: 'xxxx',
          databaseURL: 'https://todbook-32806.firebaseio.com/')
          : const FirebaseOptions(
          apiKey: 'AIzaSyAjTStjbcyIxnNWM1IW2Ygf4c19Cf09LEw',
          databaseURL: 'https://todbook-32806.firebaseio.com/',
          googleAppID: '1:595568876881:android:c8273fa147223e66'),
    );

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

    // инциируем офлайн режим
    FirebaseDatabase database;
    database = FirebaseDatabase.instance;
    database.setPersistenceEnabled(true);
    database.setPersistenceCacheSizeBytes(10000000);

    Navigator.of(context).push(BookshelfRoute());

  }
}
