import 'dart:math';
class Functionality{
  Functionality({required this.weight,required this.height});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
     _bmi= weight/pow(height/100,2);
     return _bmi.toStringAsFixed(1);

  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18.5 ){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
}