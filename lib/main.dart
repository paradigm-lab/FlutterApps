import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import './my_home_app.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomeApp()
    );
  }
}

