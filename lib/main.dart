//import 'package:calculator/extext.dart';
import 'package:calculator/CalculateWidget.dart';
import 'package:calculator/loginscreen.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  runApp(MyNewApp());
}
class MyNewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calaculator'),
        ),
        // body: CalculatorWidget(),
        body: LoginScreen(),
      ),
    );
  }

}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('click'),
//         ),
//         body: Center(
//           child: TestCounter(),
//         ),
//       ),
//     );
//   }
//
// }
