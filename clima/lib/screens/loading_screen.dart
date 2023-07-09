import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState(){
    super.initState();
    getLocation();
    print('this line of code is triggered');

  }
  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
}
  void getData() async {
    Uri url = Uri.parse('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');
    http.Response response = await http.get(url);
    if (response.statusCode == 200){
      String data = response.body;
      var decodeData = jsonDecode(data);

     double temperature= decodeData['main']['temp'];
      print(temperature);
      int condition =decodeData['weather'][0]['id'];
      print(condition);
      String cityName =decodeData['name'];
      print(cityName);
    }else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();


    return Scaffold();
  }
}