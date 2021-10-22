import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyhalloweenApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Happy halloween"
          ),
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('lib/images/halloween.jpg')),
              Text(
                'DR-DooM',
                style: TextStyle(
                    fontFamily: 'festive',
                    fontSize: 40.0,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Mobile developer',
                style: TextStyle(
                    fontFamily: '',
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red,
                  ),
                  title: Text(
                    '+14388559082',
                    style: TextStyle(
                      fontFamily: '',
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    'tejihayer.92@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Festive-regular.ttf',
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
