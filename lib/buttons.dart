import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MycoolApp());

class MycoolApp extends StatelessWidget {

  Widget build(BuildContext context) {
    var question = ('hi'
        'lol');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Survive zombie"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
           
            RaisedButton(child: Text("answer 1"), onPressed: null),
            RaisedButton(child: Text("answer 2"), onPressed: null),
            RaisedButton(child: Text("answer 3"), onPressed: null),
            RaisedButton(child: Text("answer 4"), onPressed: null),
          ],
        ),
      ),
    );
  }
}