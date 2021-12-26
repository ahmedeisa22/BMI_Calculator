import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/Icon_Content.dart';
import '../components/Reusable_Card.dart';
import '../components/Constants.dart';
import 'result_page.dart';
import '../components/bottomButton.dart';
import '../components/iconButton.dart';
import 'package:bmi_calculator/calculatorBrain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { Female, Male }

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusable_Card(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      colour: selectedGender == Gender.Male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        name: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusable_Card(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      colour: selectedGender == Gender.Female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        name: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusable_Card(
                      colour: kInActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLableTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'cm',
                                style: kLableTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 16.0,
                              ),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              thumbColor: Color(0xFFEB1555),
                              activeTrackColor: Colors.white,
                              overlayColor: Color(0x29EB1555),
                            ),
                            child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusable_Card(
                      colour: kInActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: kLableTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon_Button(
                                  icon: FontAwesomeIcons.minus,
                                  onpress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon_Button(
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Reusable_Card(
                      colour: kInActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: kLableTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon_Button(
                                  icon: FontAwesomeIcons.minus,
                                  onpress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon_Button(
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(name: 'Calculate',
            ontap:  () {
              CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(
                  bmiString:calc.calculateBmi() ,
                  bmiText: calc.getResult(),
                  bmiInterpretation: calc.getInterpretation(),
                )),
              );
            },
            )
          ],
        ));
  }
}

