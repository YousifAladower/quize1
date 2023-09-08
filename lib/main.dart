import 'package:flutter/material.dart';  
import 'package:quize1/quize.dart';
import 'package:quize1/result.dart';


void main(){
   return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int _questionsIdix=0;
void recievQUT()
{
  setState(() {
    _questionsIdix=0;
  });
}
void answerQuestion()
{
 
  setState(() {
    _questionsIdix++;
  });
  print(_questionsIdix);
  print("Yousif");
}

final List<Map<String, Object>> _questions = [

  {
    "questionText":"What is the capital of Iran?", 
     "answers": ["Tehran","Mashhad", "<NAME>", "Kkdsjf"]
  },
  {
    "questionText":"what 's favorite anamels ?",  
    "answers": ["YOUS","AD", "ADF", "ASDFD"]
  },

];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Text("Quiz APP"),
        ),
        body: Container(
          child:_questionsIdix<_questions.length? 
            Quize(_questions, _questionsIdix, answerQuestion)
            :Reslt(recievQUT)  ,
         // child:Questions(_questions[1])

        ),
      ),
    );
  }
}