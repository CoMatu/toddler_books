import 'package:flutter/material.dart';
import 'package:toddler_books/bookshelf_card.dart';

class BookShelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            Center(child: BookshelfCard())
          ],
        ),

    );
  }

}