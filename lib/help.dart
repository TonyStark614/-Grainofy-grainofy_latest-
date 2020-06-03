import 'package:flutter/material.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:grainofy_latest/main1forsub.dart';
import 'package:grainofy_latest/sidebarplusmain.dart';


class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}



class _HelpPageState extends State<HelpPage> {
  String msg = 'Hi There I am Using Grainofy';
  String base64Image = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(child: Text('PRESS FOR HELP')),

    ),
    floatingActionButton: FloatingActionButton(
  onPressed: () {
    FlutterShareMe().shareToWhatsApp(base64Image: base64Image, msg: msg);
  },

    )
    );
  }
}
