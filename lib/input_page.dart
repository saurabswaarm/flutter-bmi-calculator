import 'package:bmi_calculator/stateManager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//custom-widgets
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'rawMateria_Button.dart';

import 'constants.dart';

enum Gender { male, female }

StateManager stateManager = StateManager();

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heightSlider = 120;
  int weight = 70;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            ////
            Expanded(
              child: Row(
                children: <Widget>[
                  //
                  Expanded(
                    child: ReuseableCard(
                      stateFunction: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      boxColor: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                          gender: 'MALE', icon: FontAwesomeIcons.mars),
                    ),
                  ),
                  //
                  Expanded(
                    child: ReuseableCard(
                      stateFunction: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      boxColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                          gender: 'FEMALE', icon: FontAwesomeIcons.venus),
                    ),
                  ),
                ],
              ),
            ),
            ////
            Expanded(
              child: ReuseableCard(
                  boxColor: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Height', style: kLabelTextStyle1),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              heightSlider.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text('cm', style: kLabelTextStyle1),
                          ]),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xFFEB1555),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          overlayColor: Color(0x1FEB1555),
                          thumbColor: Color(0xFFEB1555),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10),
                        ),
                        child: Slider(
                          value: heightSlider.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              heightSlider = value.round();
                            });
                          },
                          min: 120,
                          max: 220,
                        ),
                      ),
                    ],
                  )),
            ),

            ////
            Expanded(
              child: Row(
                children: <Widget>[
                  //
                  Expanded(
                    child: ReuseableCard(
                      boxColor: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight', style: kLabelTextStyle1),
                          Text(weight.toString(), style: kNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CounterButton(
                                icon: FontAwesomeIcons.plus,
                                stateFunction: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(width: 15),
                              CounterButton(
                                icon: FontAwesomeIcons.minus,
                                stateFunction: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //
                  Expanded(
                    child: ReuseableCard(
                      boxColor: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Age', style: kLabelTextStyle1),
                          Text(age.toString(), style: kNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CounterButton(
                                icon: FontAwesomeIcons.plus,
                                stateFunction: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              SizedBox(width: 15),
                              CounterButton(
                                icon: FontAwesomeIcons.minus,
                                stateFunction: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap:(){
                stateManager.height = heightSlider;
                stateManager.weight = weight;
                stateManager.gender = selectedGender;
                
                Navigator.pushNamed(context,'/results');
              },
              child: Container(
                child:
                    Center(child: Text('Calculate', style: kLabelTextStyle2)),
                color: kBottomBarColor,
                width: double.infinity,
                height: kbottomBarHeight,
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.only(bottom: 10),
              ),
            ),
          ],
        ));
  }
}
