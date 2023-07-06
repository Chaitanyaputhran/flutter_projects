
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'icon_content.dart';
import'reusable_dart.dart';
import 'constants.dart';
enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late Gender selectedGender;
  int height=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:Row(
              children:<Widget>[
                Expanded(
                    child:ResuableCard(
                      onPress:(){
                        setState(() {
                          selectedGender =Gender.male;
                        });

                      },
                    colour: selectedGender == Gender.male ?kactiveCardColor:kinactiveCardColor ,
                      cardChild: IconContent(
                        icon:FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
      ),
                ),
                Expanded(
                    child:ResuableCard(
                      onPress:(){
                        setState(() {
                          selectedGender = Gender.female;
                        });

                      },
                      colour: selectedGender == Gender.female?kactiveCardColor:kinactiveCardColor,
                      cardChild:IconContent(
                        icon:FontAwesomeIcons.venus,
                        label:'FEMALE',
                      ),
                ),
                ),
              ],
            ),
          ),

          Expanded(
              child:ResuableCard(
                colour: kactiveCardColor,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                      Text('HEIGHT',
                      style:klabelTextStyle,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic ,
                      children:<Widget>[
                        Text(
                          height.toString(),
                          style:kNumbertextStyle,
                        ),
                        Text(
                          'cm',
                          style:klabelTextStyle,
                        )
                      ]
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height=newValue.round();
                        });

                      },
                    ),

                  ],
                ),

    ),
          ),
          Expanded(
            child:Row(
              children:<Widget>[
                Expanded(
                    child:ResuableCard(
                      colour: kactiveCardColor,
                    ),
                ),
                Expanded(
                    child:ResuableCard(
                      colour: kactiveCardColor,
                ),
                ),
              ],
            ),
          ),
          TextButton(
            child: Container(
              child:Center(
                child: Text('Calculate',
                style:TextStyle(
                color:Colors.white,
                  fontSize: 25.0,
    ),),
              ),
              color: kbottomContainerColour,
              margin: EdgeInsets.only(top:10.0),
              width:double.infinity,
              height:kbottomContainerHeight,

            ),
            onPressed: (){
              print("button is pressed");

            },
          )
        ]
      )
    );
  }
}



