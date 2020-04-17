
class BmiComment{
  bool available;
  String healthStatus;

  BmiComment({this.available, this.healthStatus});
}


class AgeBmiRange{
  int minAge;
  int maxAge;
  int minBmi;
  int maxBmi;

  AgeBmiRange(this.minAge, this.maxAge, this.minBmi, this.maxBmi);

  BmiComment query(int age, double bmi){

    BmiComment bmiComment = BmiComment();

    bmiComment.available = age >= minAge && age <= maxAge ? true : false ;

    if(bmiComment.available == true){

      if(bmi >= minBmi && bmi <= maxBmi) {
        bmiComment.healthStatus = 'healthy';
      } else if(bmi < minBmi) {
        bmiComment.healthStatus = 'underweight';
      } else if(bmi > maxBmi) {
        bmiComment.healthStatus = 'overweight';
      } else if(bmi > 34) {
        bmiComment.healthStatus = 'obese';
      }
      
      return bmiComment;

    } else {
      bmiComment.healthStatus = "Does not apply";
      return bmiComment;
    }


  }


}