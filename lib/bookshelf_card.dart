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
        width: 280.0,
        child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 10.0, color: Colors.amber),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 7.0, color: Colors.brown[500]),
                  borderRadius: BorderRadius.circular(5.0)
                ),
              ),
            ),

      )
    );
  }

}