import 'package:calculator/CalculateButton.dart';
import 'package:calculator/CalculateResult.dart';
import 'package:flutter/material.dart';

class CalculateState extends State<CalculatorWidget>{
  String resultTV='';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: CalculateResult(resultTV)),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculateButton('7', takeDigits),
              CalculateButton('8', takeDigits),
              CalculateButton('9', takeDigits),
              CalculateButton('+', onOperator),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculateButton('4', takeDigits),
              CalculateButton('5', takeDigits),
              CalculateButton('6', takeDigits),
              CalculateButton('-', onOperator),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculateButton('1', takeDigits),
              CalculateButton('2', takeDigits),
              CalculateButton('3', takeDigits),
              CalculateButton('*', onOperator),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CalculateButton('.', takeDigits),
              CalculateButton('0', takeDigits),
              CalculateButton('=', onResult),
              CalculateButton('/', onOperator),
            ],
          ),
        ),
      ],
    );
  }
  // void onButtonclick(){
  //   takeDigits('1');
  //
  // }
  void takeDigits(String digit){
    setState(() {
      resultTV += digit;
    });
  }
  String res='';
  String operator='';
  void onOperator(String operatorclick){
    if(operator.isEmpty){
      res = resultTV;
      this.operator = operatorclick;
      setState(() {
        resultTV = '';
      });
    }else{
      res = actualCalculate(res,operator,resultTV);
      this.operator = operatorclick;
      setState(() {
        resultTV = '';
      });
    }
  }
  String actualCalculate(String rhs ,String operator,String lhs){
    double n1= double.parse(rhs);
    double n2= double.parse(lhs);
    double calc=0.0;
    if(operator== '+'){
      calc = n1+n2;
    }else if(operator== '-'){
      calc = n1-n2;
    }else if(operator== '*'){
      calc = n1*n2;
    }else if(operator== '/'){
      calc = n1/n2;
    }
    return calc.toString();
  }
  void onResult(String text){
    res= actualCalculate(res, operator, resultTV);
    setState(() {
      resultTV = res;
      operator = '';
      res = '';
    });
  }

}

class CalculatorWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CalculateState();
  }


}