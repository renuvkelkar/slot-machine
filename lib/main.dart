import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int centerDiceNumber = 1;
  int rightDiceNumber = 1;

  void DiceFaceChange(){
    setState(() {
      leftDiceNumber= Random().nextInt(6)+1;
      centerDiceNumber= Random().nextInt(6)+1;
      rightDiceNumber= Random().nextInt(6)+1;


    });

  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/dice$centerDiceNumber.png'),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  )
              ),


            ],
          ),


        ),
        Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            FlatButton(
              onPressed: (){
                setState(() {
                  DiceFaceChange();
                  if (leftDiceNumber == centerDiceNumber && leftDiceNumber == rightDiceNumber )  {
                    print("you got  jackpot");
                  } else {
                    print("you can try more");
                  }

                });

              },


              child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('shuffle'),
                  )
              ),
            ),
          ],
        )),
      ],
    );
  }
}

class LeftDiceNumber {
}
