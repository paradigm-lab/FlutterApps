import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomeApp()
    );
  }
}

// We sue the statefulWidget when we have the functionality in our application
class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programming Knowledge"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //const Text('Collins Boniface'),
            FlatButton(
              child: const Text("Press"),
              onPressed: () => Toast.show(
                  'Toast Demo',
                  context,
                  duration: Toast.LENGTH_LONG,
                  gravity: Toast.CENTER,
                  backgroundColor: Colors.cyan,
                textColor: Colors.black
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
           // Text("Programming Knowledge")
          ],
        ),

        /*
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
         const Text('Collins Boniface'),
         FlatButton(
           child: const Text("Press"),
           onPressed: () => print("Pressed"),
           color: Colors.red,
           textColor: Colors.white,
         ),
          Text("Programming Knowledge")
        ]
        ),
         */
      ),
    );
  }
}



