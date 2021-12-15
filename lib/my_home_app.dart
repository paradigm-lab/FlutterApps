import 'package:flutter/material.dart';

// We sue the statefulWidget when we have the functionality in our application
class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {

  void buttonAction(String name) {
    print("Button pressed by the " + name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programming Knowledge"),
        backgroundColor: Colors.red,
      ),

      body: Container(
          height: double.infinity,
          width: double.infinity,
        child: Image.asset(
        'asset/pic5.jpg',
         repeat: ImageRepeat.repeatY,
         //alignment: Alignment.bottomCenter,
          //fit: BoxFit.scaleDown,
        ),


        /*
        height: 100.0,
        frameBuilder: (
            BuildContext context,
            Widget child,
            _,
            bool wasSynchronouslyLoaded
        ) {
          return Container(
            padding: const EdgeInsets.all(100.0),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: child,
          );
      },
        */

      ),


      /*
    body: const Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "Programming knowledge",
          textAlign: TextAlign.end,
        ),
      ),
    ),

        child: Container (
          constraints: const BoxConstraints(
              maxHeight: 300.0,
              minHeight: 100.0,
          ),
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              //borderRadius: BorderRadius.all(),
          ),
          child: const Text("Programming knowledge", textAlign: TextAlign.center,),
        ),
       */


      /*
        child: RaisedButton.icon(
            onPressed: () => print("Button pressed"),
            icon: const Icon(Icons.android),
            label: const Text("Android"),
          color: Colors.red,
        ),

        decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.blue
        ),
        child: IconButton(
          icon: const Icon(Icons.android
          ),
        onPressed: () => print("Button is pressed"),
        ),
        */

      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Add"),
        icon: const Icon(Icons.add),
        onPressed: () => print("FAB pressed"),
        backgroundColor: Colors.red[900],
        tooltip: 'Tooltip',
      ),


    /*
    body: Center (
      child: IconButton(icon: Icon(Icons.add),
        onPressed: () => print("Button pressed"),
        color: Colors.red,
        iconSize: 40.0,
        splashColor: Colors.green,
        padding: EdgeInsets.all(20.0),
        tooltip: 'Description of the button',
      ),
    ),

      body: Center(
          child: OutlineButton(
            onPressed: () => print("Outline button pressed"),
            child: const Icon(Icons.add),
            borderSide: const BorderSide(
                color: Colors.red,
                width: 5.0,
                style: BorderStyle.solid
            ),
          )
      ),


      body: const Center(
        child: RaisedButton(
          onPressed: null,
          child: Icon(Icons.add),
          color: Colors.red,
          colorBrightness: Brightness.dark,
          elevation: 10,
          disabledColor: Colors.cyan,
        ),
      ),


      body: Center(
        child: FlatButton(
          child: const Icon(Icons.add),
          onPressed: () => buttonAction("Paradigm"),
          color: Colors.red,
          colorBrightness: Brightness.dark,
          disabledColor: Colors.cyan,
          onLongPress: () => print('button is pressed for long time'),
        ),
      ),


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



