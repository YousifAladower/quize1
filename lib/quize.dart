import 'package:flutter/material.dart';
import 'package:quize1/answer.dart';
import 'package:quize1/question.dart';


class   Quize extends StatelessWidget {
 final List<Map<String, Object>> question;
  final int qestionIndex ;
  final void Function() answerQuestion;
  
  Quize(this.question,this.qestionIndex,this.answerQuestion);
  @override
  Widget build(BuildContext context) {


    return Container(
      child: Column(
            children: [
             Questions(question[qestionIndex]['questionText'] as String),
              ...(question[qestionIndex]['answers'] as List<String> ).map((answer)
              {
                return  Asnwer(answerQuestion,answer);

              }).toList(),
            
             Asnwer(answerQuestion,"answer2"),
             Asnwer(answerQuestion,"answer3"),
            ],
          ),
    );
  }

}