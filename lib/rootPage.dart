import 'package:flutter/material.dart';
// import 'package:grainofy_latest/mainhp.dart';
import 'package:grainofy_latest/sidebarplusmain.dart';
// import 'package:grainofy/aboutUs.dart';
// import 'package:grainofy/screens/loginScreen.dart';
// import 'package:grainofy/services/auth_services.dart';

import 'aboutUs.dart';
import 'auth_services.dart';
import 'loginScreen1.dart';

enum AuthStatus {
  NOT_DERTEMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}

class RootPage extends StatefulWidget {
  RootPage({this.auth});

  final BaseAuth auth;

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.NOT_DERTEMINED;
  String _userId = "";

  @override
  void initState() {
    super.initState();
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        if (user != null) {
          _userId = user?.uid;
        }
        authStatus =
            user?.uid == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    }).catchError((e) {
      authStatus = AuthStatus.NOT_LOGGED_IN;
    });
  }

  void loginCallBack() {
    widget.auth.getCurrentUser().then((user) {
      setState(() {
        _userId = user.uid.toString();
      });
    });
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;
    });
  }

  void logoutCallBack() {
    setState(() {
      authStatus = AuthStatus.NOT_LOGGED_IN;
      _userId = "";
    });
  }

  Widget buildWaitingScreen() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.NOT_DERTEMINED:
        return LoginScreen();
        break;

      case AuthStatus.NOT_LOGGED_IN:
        return new LoginScreen(
          auth: widget.auth,
          loginCallback: loginCallBack,
        );
        break;

      case AuthStatus.LOGGED_IN:
        if (_userId.length > 0 && _userId != null) {
          return new MyHomePage();
        } else
          return buildWaitingScreen();
        break;

      default:
        return buildWaitingScreen();
    }
  }
}
