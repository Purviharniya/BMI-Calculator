import 'dart:math';

class Calculator{
  Calculator({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculate(){
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String result(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }
    else if (_bmi>18.5 && _bmi<25){
      return 'NORMAL';
    }
    else{
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more often!';
    }
    else if (_bmi>18.5 && _bmi<25){
      return 'Your body is perfect. Good job!';
    }
    else{
      return "You have a lower than normal body weight. Try eating a healthy meal!";
    }
  }
}