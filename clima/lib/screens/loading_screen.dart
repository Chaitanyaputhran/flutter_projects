import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState(){
    super.initState();
    getLocation();
  }
  void getLocation() async{

    try{

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

    print(position);
  }
  catch (e) {
      print(e);
  }}
  void somethingThatExpectsLessThan10(int n){
    if (n>10){
      throw 'n is greater than 10,n should always be less than 10.';
    }
  }
  @override
  Widget build(BuildContext context) {
    String myMargin = '15';
    double myMarginAsDouble=30.0;

    try {
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsDouble ?? 30.0),
        color: Colors.red,
      ),
    );
  }
}