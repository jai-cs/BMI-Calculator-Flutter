import 'package:flutter/cupertino.dart';
import 'dart:math';



class CalculationCenter{
  CalculationCenter({@required this.weight, @required this.height});

  final int weight;
  final int height;
  double _bmi;
  String result;
  String interpretation;

  String calcBMI(){
  _bmi = weight/(pow(height/100, 2));
  return _bmi.toStringAsFixed(1);
  }

  String calcResult(){
    if (_bmi >= 25) {
      result = 'overweight';
    }
      else if (_bmi>=18){
        result = 'normal';
    }else {
        result = 'underweight';
      }
      return result;
    }

    String calcInterpretation(){
      if (_bmi >= 25) {
        interpretation = 'Exercise more !';
      }
      else if (_bmi>=18){
        interpretation = 'Well Done !';
      }else {
        interpretation = 'Eat more !';
      }
      return interpretation;
    }
}

