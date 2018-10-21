import 'package:flutter/material.dart';

class BookshelfCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: Colors.transparent,
      key: key,
      child: SizedBox(
        height: 200.0,
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/card_frame.png'),
            )
          ],
        ),
      )
    );
  }

}