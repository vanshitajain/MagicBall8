import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.pink[100],
            appBar:AppBar(
              backgroundColor: Colors.yellow[100],
            title:Center(
            child: Text(
              'Magic Ball 8',
              style: TextStyle(
                fontFamily: 'Courgette',
                fontSize: 30.0,
                color: Colors.red[400],
              ),
            ),
          ),
  ),
          body:MagicBall8()
      ),
      ),
  );
}
class MagicBall8 extends StatefulWidget {
  @override
  _MagicBall8State createState() => _MagicBall8State();
}

class _MagicBall8State extends State<MagicBall8> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
      Padding(
        padding: const EdgeInsets.only(top:155.0),
        child: FlatButton(
           onPressed: (){
             setState(() {
                ballNumber=Random().nextInt(5)+1;
             });
           },
           child: Image.asset('images/ball$ballNumber.png'),
         ),
      ),
    Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text('Ask Me Anything!',
      style: TextStyle(
      fontSize: 30.0,
      fontFamily: 'Courgette',
      color: Colors.black,
      ),
      ),
    ),
      ],
    );
  }
}



  