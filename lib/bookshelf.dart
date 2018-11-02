import 'package:flutter/material.dart';
import 'package:toddler_books/bookshelf_card.dart';
import 'package:flutter/animation.dart';

class BookShelf extends StatefulWidget {
  @override
  BookShelfState createState() {
    return BookShelfState();
  }
}

class BookShelfState extends State<BookShelf> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill),
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              double animval = _animation.value;
              return Transform(
                  transform: Matrix4.translationValues(animval * width, 0.0, 0.0),
                  child: Container(
                      width: width,
                      color: Colors.transparent,
                      child:
                      Image(image: AssetImage('assets/images/surround.png',),
                        fit: BoxFit.fill,
                      )
                  )
              );
            },
          ),
          Center(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return BookshelfCard();
                },
              )
              ,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
