import 'package:flutter/material.dart';

// We sue the statefulWidget when we have the functionality in our application
class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {

  void buttonAction(String name) {
    print("Button pressed " + name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programming Knowledge"),
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: FlatButton(
          child: Icon(Icons.add),
          onPressed: () => buttonAction("collins"),
          color: Colors.red,
          colorBrightness: Brightness.dark,
          disabledColor: Colors.cyan,
          onLongPress: () => print('button is pressed for long time'),
        ),
      ),

      /*
      body: Center(child: RichText(text: const TextSpan(
          text: "Programming",
          style: TextStyle(color: Colors.cyan, fontSize: 15,),
          children: <TextSpan> [
            TextSpan(text: 'Knowledge', style: TextStyle(color: Colors.red, fontSize: 30),),
            TextSpan(text: 'Flutter', style: TextStyle(color: Colors.green, fontSize: 20),),
          ]
      ),
      ),

      body: const Center(child: Text(
        "Programming knowledge",
        maxLines: 3,
        style: TextStyle(
            backgroundColor: Colors.red,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic
          ),
        ),
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
      );
  }
}



