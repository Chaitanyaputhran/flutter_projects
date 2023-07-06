import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import'../components/reusable_dart.dart';
import '../bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Expanded(
            child:Container(
              child:Text('Your Result',
                style:kTitleText,
              ),

            ),
          ),
          Expanded(
            flex:5,
            child:ResuableCard(
              colour:kactiveCardColor,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[
                  Text(
                    'Normal',
                    style:kresultTextStyle,
                  ),
                  Text(
                    '12',
                    style:kBMITextStyle,
                  ),
                  Text('Your BMI result is quite low ,you should eat more!',
                  textAlign:TextAlign.center,
                    style:kBodyTextStyle,),

                ]
              )
            )
          ),
          BottomButton(onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(builder:(context) => InputPage()));}
              , buttonTitle:'RECALCULATE')
        ]

      ),
    );
  }
}

