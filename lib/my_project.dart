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
    _textController.text = "2";
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
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

            // SizedBox is used to specify the width and height of every widget
            SizedBox(
              height: 300.0,
             child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => ListTile(
                    title: Text("${(index + 1) * int.parse(_textController.text)}"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}