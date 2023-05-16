import 'dart:math';

import 'package:flutter/material.dart';
class daiz extends StatefulWidget {
  const daiz({Key? key}) : super(key: key);

  @override
  State<daiz> createState() => _daizState();
}

class _daizState extends State<daiz> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void changedicenumber(){
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Center(child: Text('daiz app')),),
      body:Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: TextButton(onPressed: changedicenumber,child:Image.asset("image/dais$leftdicenumber.jpeg"))),
           Expanded(child: TextButton(onPressed: changedicenumber,child:Image.asset("image/dais$rightdicenumber.jpeg")))
        ],
      )
      )
    );
  }
}
