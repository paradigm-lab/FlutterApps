import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}


class _MyHomeAppState extends State<MyHomeApp> {

  var _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _textController.text = "My First Flutter Project";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project"),
        backgroundColor: Colors.red,
      ),

      body: Container(
        child: Column(
          children: [
            TextField(
              controller: _textController,
            ),
          ],
        ),
      ),
    );
  }



}