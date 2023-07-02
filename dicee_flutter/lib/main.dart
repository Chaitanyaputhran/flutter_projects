import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  var leftDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber=2;
    return Center(
        child:Row(
      children:<Widget>[
        Expanded(
              child: TextButton(
                onPressed: () {
                  print('left button got pressed.');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),

          ),
        Expanded(

    child: TextButton(
    onPressed: () {
      print('right button got pressed.');
    },
            child: Image.asset('images/dice1.png'),
          ),
          ),




      ],
    ),
    );
  }
}




