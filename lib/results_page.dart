import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: false,
          title: Text('Your Results', style: kLabelTextStyle2),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ReuseableCard(
                boxColor: kActiveCardColor,
                //
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    //
                    Center(
                      child: Text(
                        (stateManager.calculateBMI()).toString(),
                      ),
                    )
                    //
                    
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                    child: Text('Re-Calculate', style: kLabelTextStyle2)),
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
