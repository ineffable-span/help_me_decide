import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _imageExtension = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('It\'s decision time.'),
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _imageExtension = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$_imageExtension.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
