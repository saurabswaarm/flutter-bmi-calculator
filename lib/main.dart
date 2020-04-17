import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context)=>InputPage(),
        '/results': (context)=>ResultsPage()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromRGBO(15, 19, 30, 1.0),
        scaffoldBackgroundColor: Color.fromRGBO(9, 11, 12, 1.0),
        
      ),
      
    );
  }
}
 