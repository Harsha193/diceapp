import 'dart:math';

import 'package:flutter/material.dart';
class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdice=6;
  int rightdice=3;
  void ChangeDicenymber(){
    setState(() {
      leftdice=Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: TextButton(onPressed: (){ChangeDicenymber();}, child: Image.asset('image/dice$leftdice.jpg'),)),
          Expanded(child: TextButton(onPressed: (){ChangeDicenymber();}, child: Image.asset('image/dice$rightdice.jpg'),)),
        ],

      ),
    );
  }
}
