import 'package:flutter/material.dart';

class Reslt extends StatelessWidget {
final void Function() q;

Reslt(this.q);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
                child:Text("Done thank you",
                style: TextStyle(fontSize: 30),
                ) ,
              ),
              TextButton(onPressed: q, 
              child: Text("returnBack",style: TextStyle(fontSize: 30),))
        ],
      ) ,
    );
  }

}