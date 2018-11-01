import 'package:flutter/cupertino.dart';
import 'package:toddler_books/bookshelf.dart';

//класс для горизонтального перехода между экранами

class BookshelfRoute extends CupertinoPageRoute {
  BookshelfRoute()
      : super(builder: (BuildContext context) => BookShelf());


  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: BookShelf());
  }
}