import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({@required this.height,@required this.weight});

  final int height;
  final int  weight;
  double  _bmi;

  String calculateBMI() {
    _bmi= weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);


  }

  String getResults(){
    if(_bmi>=25){
      return 'OverWeight';

    } else if(_bmi > 18.5){
      return "Normal";
    }else {
      return "Underweight";
    }

  }
  String getInterpretation(){

    if(_bmi >=25){

      return 'You have a higher weight than normal Try to excercise more';
    }
    else if (_bmi >= 18.5){
      return 'You have normal body weight good job';
    }
    else {


       return 'you have lower  BMI  eat more ';
    }
  }


}