
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'icon_content.dart';
import'reusable_dart.dart';
const bottomContainerHeight= 80.0;
const activeCardColor =Color(0xFF1D1E33);
const inactiveCardColor=Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;
//if 1=male 2=female
  void updateColour(Gender SelectedGender){
    //male card is pressed
    if(SelectedGender ==Gender.male){
      if (maleCardColour==inactiveCardColor){
        maleCardColour=activeCardColor;
        femaleCardColour=inactiveCardColor;
    }
      else{
        maleCardColour=inactiveCardColor;
    }
  }
    if(SelectedGender ==Gender.female){
      if (femaleCardColour==inactiveCardColor){
        femaleCardColour=activeCardColor;
        maleCardColour=inactiveCardColor;
      }
      else{
        femaleCardColour=inactiveCardColor;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            child:Row(
              children:<Widget>[
                Expanded(
                    child:GestureDetector(
onTap: (){
  setState(() {
    updateColour(Gender.male);
  });
},
                      child: ResuableCard(
                      colour: maleCardColour,
                        cardChild: IconContent(
                          icon:FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
      ),
                    ),
                ),
                Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(Gender.female);
                        });
                      },
                      child: ResuableCard(
                        colour: femaleCardColour,
                        cardChild:IconContent(
                          icon:FontAwesomeIcons.venus,
                          label:'FEMALE',
                        ),
                ),
                    ),
                ),
              ],
            ),
          ),

          Expanded(
              child:ResuableCard(
                colour: activeCardColor,


    ),
          ),
          Expanded(
            child:Row(
              children:<Widget>[
                Expanded(
                    child:ResuableCard(
                      colour: activeCardColor,
                    ),
                ),
                Expanded(
                    child:ResuableCard(
                      colour: activeCardColor,
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
              color: bottomContainerColour,
              margin: EdgeInsets.only(top:10.0),
              width:double.infinity,
              height:bottomContainerHeight,

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



