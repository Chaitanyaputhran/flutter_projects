import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF0A0E21),
        ).copyWith(secondary: Colors.teal[300],
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white), // Set black color for the text style
        ),
      ),
      home: InputPage(),
    );
  }
}




