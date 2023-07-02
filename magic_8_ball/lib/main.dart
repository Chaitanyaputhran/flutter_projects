import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title:Text( 'Ask me anything'),
            backgroundColor: Colors.blue,
          ),
       body:askMe(),
        ),
      ),
    );
class askMe extends StatefulWidget {
  const askMe({Key? key}) : super(key: key);

  @override
  State<askMe> createState() => _askMeState();
}

class _askMeState extends State<askMe> {
  int imageNumber=1;
  void changeState(){
    setState(() {
      imageNumber=Random().nextInt(5)+1;
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print("the button was pressed");
          changeState();
        },
        child: Image.asset('images/ball$imageNumber.png'),
      ),
    );
  }




}

