import 'package:flutter/material.dart';
//the main function

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],

        ),
        body: Center(
          child: Image(
            image: AssetImage('images/img.png'),
        ),

      ),

    ),
    ),
  );
}
