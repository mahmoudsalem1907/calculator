import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {

  String num;
  Function onClick;

  CalculateButton(this.num, this.onClick);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Expanded(
        child: Container(
          margin: EdgeInsets.all(3),
          child: ElevatedButton(onPressed: ()=>{
            onClick(num)
          },
              // new for git test
              child: Text(num,
                style: TextStyle(fontSize: 28,
                    color: Colors.black,
                  //backgroundColor: Colors.indigo
                ),
              )),
        ),
      );
  }
}