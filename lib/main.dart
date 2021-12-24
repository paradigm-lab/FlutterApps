//import 'package:demo/screen2.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import './my_home_app.dart';
//import './my_project.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomeApp(),

      /*
      // The route takes a map
      routes: {
        screen2.routeName: (BuildContext context) => screen2(),
      },
      */
    );
  }
}

