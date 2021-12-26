import 'package:bmi_calculator/components/Constants.dart';
import 'package:flutter/material.dart';
import '../components/Reusable_Card.dart';
import 'inpt_page.dart';
import '../components/bottomButton.dart';
import '../components/iconButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiString , @required this.bmiText , @required this.bmiInterpretation});
  String bmiString;
  String bmiText;
  String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  textAlign: TextAlign.center,
                  style: kTitleTextStyle,
                ),
              )),
          Expanded(
            flex: 5,
            child: Reusable_Card(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiString,
                    style: kBmiTextStyle,
                  ),
                  Text(
                   bmiInterpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            name: 'RE-Calculate',
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
