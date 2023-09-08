import 'package:flutter/material.dart';

class Asnwer extends StatelessWidget {
  final String answerText;
   final void Function() press;

  Asnwer(this.press,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton( 
             child: Text(answerText,
             style: TextStyle(fontSize: 30),
             ),
             onPressed: press,
             ),
    );
  }

}