import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  @override
  BookPageState createState() {
    return BookPageState();
  }
}

class BookPageState extends State<BookPage> {
  final String backgroundPng = 'assets/images/background.png';
  final String surroundPng = 'assets/images/surround.png';

  String assetName = 'assets/images/start_background.png';

  @override
  Widget build(BuildContext context) {
    Key key;
    const Radius radius = Radius.circular(10.0);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundPng), fit: BoxFit.fill),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(surroundPng), fit: BoxFit.fill),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(radius)),
                color: Colors.transparent,
                key: key,
                elevation: 3.0,
                child: SizedBox(
                  width: 280.0,
                  height: 200.0,
                  child: Container(
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
/*
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BookPage()),
                          );
*/
                          },
                          child: Image(
                            image: AssetImage(assetName),
                            fit: BoxFit.fill,
                          ),
                        )
                    ),
                  ),
                )
              ),
            ),
            Expanded(
              child: Text('ffffff'),
            )
          ],
        ),
      ]),
    );
  }
}
