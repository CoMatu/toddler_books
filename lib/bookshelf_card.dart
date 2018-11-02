import 'package:flutter/material.dart';
import 'package:toddler_books/book_page.dart';

class BookshelfCard extends StatelessWidget {
  final String assetName = 'assets/images/start_background.png';

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(10.0);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(radius)),
      color: Colors.transparent,
      key: key,
      elevation: 3.0,
      child: Container(
        width: 280.0,
        height: 200.0,
        decoration: BoxDecoration(
          border: Border.all(width: 10.0, color: Colors.amber),
          borderRadius: BorderRadius.all(radius)
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 7.0, color: Colors.brown[500]),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookPage()),
              );
            },
            child: Image(
                image: AssetImage(assetName),
              fit: BoxFit.fill,
            ),
          )
        ),
      ),
    );
  }
}
