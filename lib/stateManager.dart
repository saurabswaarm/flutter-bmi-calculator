import 'input_page.dart';
import 'ageBMIRange.dart';

class StateManager{
  int weight;
  int height;
  int age;
  Gender gender;

  Map<String, String> remarks = {
    'underweight': 'You need to eat more',
    'healthy' : 'You seem to have a healthy body type',
    'overweight': 'You are getting fat',
    'obese': 'Eat a salad you\'re in trouble'
  };

  List<AgeBmiRange> bmiChartMen = [
    AgeBmiRange(0, 5, 14, 18),
    AgeBmiRange(6, 10, 14, 19),
    AgeBmiRange(11, 15, 15, 23),
    AgeBmiRange(16, 20, 17, 25),
    AgeBmiRange(21, 30, 19, 25),
    AgeBmiRange(31, 40, 20, 25),
    AgeBmiRange(41, 50, 21, 26),
    AgeBmiRange(51, 60, 22, 27),
    AgeBmiRange(61, 200, 23, 29), // weight 60 +
  ];

  List<AgeBmiRange> bmiChartWomen = [
    AgeBmiRange(0, 5, 13, 17),
    AgeBmiRange(6, 10, 13, 18),
    AgeBmiRange(11, 15, 14, 22),
    AgeBmiRange(16, 20, 16, 24),
    AgeBmiRange(21, 30, 18, 24),
    AgeBmiRange(31, 40, 19, 24),
    AgeBmiRange(41, 50, 20, 25),
    AgeBmiRange(51, 60, 21, 26),
    AgeBmiRange(61, 200, 22, 28) //weight 60+
  ];

  

  
  

  double calculateBMI(){
    return this.weight / this.height*this.height;
  }

  void testMap(){
    print(remarks['underweight']);
  }


}