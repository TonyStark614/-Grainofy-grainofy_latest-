import 'package:flutter/material.dart';

import 'GraphCodeFile.dart';
// import 'asligraphpage.dart';
// import 'graphCodeFile.dart';

void main() => runApp(GraphCallingPage());

class GraphCallingPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animated Charts App',
      theme: ThemeData(
        primaryColor: Color(0xffff6101),
      ),
      home: GraphCodeFile(),
    );
  }
}