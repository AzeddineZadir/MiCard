import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tp01_exo01/Icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#8EBFE1"),
        body: SafeArea(
            child: Center(
          child: Container(
            width: 400.0,
            height: 400.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 280.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: HexColor("#8EBFE1"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Azeddine Zadir',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontFamily: 'AlexBrush',
                            fontWeight: FontWeight.bold,
                            color: HexColor("#0A2463"),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Icon(
                              Icons.email,
                              size: 32.0,
                              color: HexColor("#0A2463"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.0),
                            child: Text(
                              'zadir.azeddine@gmail.com',
                              style: TextStyle(
                                  fontSize: 16.0, color: HexColor("#0A2463")),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Icon(
                              MyFlutterApp.github,
                              size: 30.0,
                              color: HexColor("#0A2463"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.0),
                            child: Text(
                              'github.com/AzeddineZadir',
                              style: TextStyle(
                                  fontSize: 16.0, color: HexColor("#0A2463")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 290.0,
                  child: Container(
                    width: 105.0,
                    height: 105.0,
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: HexColor("#8EBFE1"), width: 4.0),
                      image: DecorationImage(
                        image: AssetImage('images/photo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
