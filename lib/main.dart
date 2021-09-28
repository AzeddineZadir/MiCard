import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
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
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(),
                ),
                Positioned(
                  bottom: 290.0,
                  child: Container(
                    width: 105.0,
                    height: 105.0,
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.teal, width: 4.0),
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
