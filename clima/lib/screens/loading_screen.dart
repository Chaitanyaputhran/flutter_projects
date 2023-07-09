import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';


const apiKey = 'f8451d268748869878f523ab927efcaf';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;
  void initState(){
    super.initState();
    getLocationData();
    print('this line of code is triggered');

  }
  void getLocationData() async{
    Location location = Location();
    await location.getCurrentLocation();
    latitude=location.latitude;
    print(location.longitude);
    print(location.latitude);
    longitude=location.longitude;

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

var weatherData = await networkHelper.getData();



  }






  @override
  Widget build(BuildContext context) {


    return Scaffold();
  }
}