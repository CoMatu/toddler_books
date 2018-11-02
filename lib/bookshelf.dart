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

  final String decorationPng = 'assets/images/surround.png';
  final String backgroundPng = 'assets/images/background.png';

  AnimationController _controller;
  AnimationController _controllerDown;
  Animation _animation;
  Animation _animationDown;

  final String titlePng = 'assets/images/bookshelf_title.png';

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    ));
    _controllerDown =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animationDown = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controllerDown,
      curve: Curves.ease,
    ));
    _controller.forward();
    _controllerDown.forward();
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
                  image: AssetImage(backgroundPng),
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
                      Image(image: AssetImage(decorationPng,),
                        fit: BoxFit.fill,
                      )
                  )
              );
            },
          ),
          AnimatedBuilder(
            animation: _controllerDown,
            builder: (BuildContext context, Widget child) {
              double animval = _animationDown.value;
              return Transform(
                  transform: Matrix4.translationValues(animval * width, 0.0, 0.0),
                  child: Container(
                    alignment: Alignment.topCenter,
                      width: width,
                      color: Colors.transparent,
                      child: Padding(padding: EdgeInsets.only(top: 35.0),
                      child: SizedBox(
                        height: 25.0,
                        child: Image(image: AssetImage(titlePng,),
                          fit: BoxFit.fill,
                        )
                        ,
                      )
                        ,)
                  )
              );
            },
          ),
          Center(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
