import 'package:flutter/material.dart';

class CalculateResult extends StatelessWidget{
  String num;
  CalculateResult(this.num);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(num, textAlign: TextAlign.end,style: TextStyle(
      fontSize: 25,
    ), );
  }
}