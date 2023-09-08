import 'package:flutter/material.dart';
import 'package:quize1/answer.dart';
import 'package:quize1/question.dart';


void main(){
   return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int _questionsIdix=0;
void answerQuestion()
{
  if(_questionsIdix==1)
  _questionsIdix=-1;
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
          child: Column(
            children: [
             Questions(_questions[_questionsIdix]['questionText'] as String),
              ...(_questions[_questionsIdix]['answers'] as List<String> ).map((answer)
              {
                return  Asnwer(answerQuestion,answer);

              }).toList(),
            
             Asnwer(answerQuestion,"answer2"),
             Asnwer(answerQuestion,"answer3"),
            ],
          ),
         // child:Questions(_questions[1])

        ),
      ),
    );
  }
}