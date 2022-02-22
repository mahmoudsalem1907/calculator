import 'package:flutter/material.dart';
class TestCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Counter();
  }
}
class Counter extends State<TestCounter>{
  int c=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text('counter $c'),
        RaisedButton(
            onPressed: onClick ,
          child: Icon(Icons.touch_app_sharp),


        )
      ],
    );
  }
void onClick(){
    setState(() {
      c++;
    });
}
}
