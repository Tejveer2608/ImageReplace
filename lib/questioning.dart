import 'dart:ffi';

import 'package:flutter/material.dart';

class question extends StatelessWidget {
  question(this.questionText);

  String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
