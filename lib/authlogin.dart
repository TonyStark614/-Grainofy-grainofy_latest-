import 'package:flutter/material.dart';
import 'package:grainofy_latest/rootPage.dart';
import 'package:grainofy_latest/sidebarplusmain.dart';
import 'package:grainofy_latest/signUpPage.dart';

// import 'aboutUs.dart';
import 'auth_services.dart';
import 'forgetPasswordScreen.dart';
import 'loginScreen1.dart';
// import 'package:grainofy/aboutUs.dart';
// import 'package:grainofy/screens/forgetPasswordScreen.dart';
// import 'package:grainofy/screens/loginScreen.dart';
// import 'package:grainofy/screens/rootPage.dart';
// import 'package:grainofy/screens/signUpPage.dart';
// import 'package:grainofy/services/auth_services.dart';

void main() {
  runApp(authlogin());
}

class authlogin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RootPage(auth: new Auth()),
      routes: <String, WidgetBuilder> {
        '/RootPage' : (context) => RootPage(),
        '/signUpPage' : (context) => SignUpScreen(),
        '/homePage' : (context) => MyHomePage(),
        '/forgetPassword' : (context) => ForgetPasswordScreen(),
        '/loginScreen': (context) => LoginScreen(),
      },
    );
  }
}