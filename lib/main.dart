import 'package:flutter/material.dart';
import 'package:quize1/question.dart';

void main(){
   return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

final _questions = [
  'what \'s favorite color ?',
  'what \'s favorite anamels ?',
  'what \'s favorite place ?'
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text("Quiz APP"),
        ),
        body: Container(
          child: Column(
            children: [
             Questions(_questions[0])
            ],
          ),
         // child:Questions(_questions[1])

        ),
      ),
    );
  }
}