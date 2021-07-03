import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;

  Gender selectedGender;
  // Color maleCardColor = inactiveCardColour;
  // Color femaleCardColor = inactiveCardColour;
  //
  // void updateColor(Gender selectedgender){
  //   if (selectedgender== Gender.male){
  //     if(maleCardColor==inactiveCardColour){
  //       maleCardColor = activeCardColour;
  //       femaleCardColor = inactiveCardColour;
  //     }else{
  //      maleCardColor = inactiveCardColour;
  //     }
  //   }
  //   if (selectedgender== Gender.female){
  //     if(femaleCardColor==inactiveCardColour){
  //       femaleCardColor = activeCardColour;
  //       maleCardColor = inactiveCardColour;
  //     }else{
  //       femaleCardColor = inactiveCardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        // updateColor(Gender.male);
                        print('male card is tapped');
                        selectedGender=Gender.male;

                      });
                    },
                    child: ReusableCard(
                      // colour: activeCardColour,
                      colour: selectedGender==Gender.male? kactiveCardColour:kinactiveCardColour,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars,label:'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        // updateColor(Gender.female);
                        selectedGender=Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender==Gender.female?kactiveCardColour:kinactiveCardColour,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus,label:'FEMALE'),

                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      'HEIGHT',
                      style: klabelTextStyle,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                          '180',
                        style: kNumberStyle,

                      ),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      )



                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 200,
                    // onChanged: (){
                    // },
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kactiveCardColour,


                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kactiveCardColour,


                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kbottomContainerHeight,

          )
        ],
      )
    );
  }
}


