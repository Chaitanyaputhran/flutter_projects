
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'icon_content.dart';
import'reusable_dart.dart';
import 'constants.dart';
import 'results_page.dart';
enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late Gender selectedGender=Gender.male;
  int height=180;
  int weight = 60;
  int age=19;

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
                      cardChild:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT',
                      style:klabelTextStyle,),
                      Text(
                      weight.toString(),
                       style: kNumbertextStyle,


                      ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[

                       RoundIconButton(icon:FontAwesomeIcons.minus,
                  onPressed: (){
                         setState(() {
                           weight--;
                         });

                          }), SizedBox(
                           width: 10.0,
                         ),


                            RoundIconButton(icon:FontAwesomeIcons.plus,
                              onPressed: (){
                           setState(() {
                               weight++;
                                  });
                        },),
                                               ],
                     ),
                      ],
                      ) ,
                    ),
                ),
                Expanded(
                    child:ResuableCard(
                      colour: kactiveCardColor,
    cardChild: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('AGE',
    style: klabelTextStyle,),
    Text(age.toString(),
    style:kNumbertextStyle,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget> [

        RoundIconButton(icon: FontAwesomeIcons.minus,
    onPressed: (){
          setState(() {
            age--;
          });
    },
    ),
      SizedBox(
        width: 10.0,
      ),

    RoundIconButton(icon: FontAwesomeIcons.plus,
    onPressed: (){
      setState(() {
        age++;
      });
    })
      ],

    )],
    ),
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
             Navigator.push(context, MaterialPageRoute (builder: (context) => ResultsPage()));

            },
          )
        ]
      )
    );
  }
}
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      elevation:6.0,
      constraints: BoxConstraints.tightFor(
        width:56.0,
        height:56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

      onPressed: onPressed,
    );
  }
}




