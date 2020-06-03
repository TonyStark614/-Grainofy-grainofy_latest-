import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';

void main() => runApp(test2());

class test2 extends StatefulWidget {
  @override
  _test2State createState() => _test2State();
}

class _test2State extends State<test2> {
  String msg = 'Hi There I am Using Gronify';
  String base64Image = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.memory(
                base64.decode(base64Image.split(',')[1]),
                height: 312,
                width: 175.3,
                fit: BoxFit.fill,
                gaplessPlayback: true,
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('share to WhatsApp'),
                onPressed: () {
                  FlutterShareMe()
                      .shareToWhatsApp(base64Image: base64Image, msg: msg);
                },
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
