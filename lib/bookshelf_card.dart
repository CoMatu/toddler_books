import 'package:flutter/material.dart';

class BookshelfCard extends StatelessWidget {
  String assetName = 'assets/images/start_background.png';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Radius radius = Radius.circular(10.0);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(radius)
      ),
      color: Colors.transparent,
      key: key,
child: Container(
  width: 280.0,
  height: 200.0,
),
/*
      child: SizedBox(
        height: 200.0,
        width: 280.0,
        child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 10.0, color: Colors.amber),
//                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 7.0, color: Colors.brown[500]),
//                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Image(
                  //TODO загрузка картинки из Firebase
                    image: AssetImage(assetName),
                  fit: BoxFit.cover,
                ),
              ),
            ),

      )
*/
    );
  }

}