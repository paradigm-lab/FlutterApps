//import 'package:demo/screen2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// We sue the statefulWidget when we have the functionality in our application

// we can use the setState if we are using the statefulWidget
class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {

  /*
  List<int> dummy = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  var _textController;

  var count = 0;

  // We write all the code after the initState super state
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _textController.text = 'Programming knowledge';
    // All the initialization that we wanna do like Remember me
  }

  // In dispose we read all the dispose before the super keyword
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
    // It is used for closing all the existing things
    // By disposing the controllers, Global keys

  }

  void buttonAction(String name) {
    print("Button pressed by the " + name);
  }
  final List<int> _listItems = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Programming Knowledge"),
        backgroundColor: Colors.red,
      ),



    );

    /*
    body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit),
        onPressed: () {

          // Using the popAndPushNamed this take the screen out whereby we can't pop the screen again
          Navigator.of(context).pushNamed(
              screen2.routeName,
              arguments: "Navigation is working",
          );

          /*
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => screen2())
          );
          */

        },
      ),
    );

      // GridView
      body: GridView(
        scrollDirection: Axis.vertical,

        // Using reverse takes every thing at the bottom from the position to the list
        //reverse: true,
        controller: ScrollController(),
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
        ),
        children: dummy.map((e) => Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text("$e"),
        )).toList(),
      ),
    );

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
          // Takes a boolean value
          autocorrect: true,
          // It is used to make the TextField to automatically been selected
          // It is false by default
          autofocus: true,

          //controller: _textController,

          // It is and enabled future that takes a boolean value and by default
          // It is true
          enabled: true,

          // It is used for the cut, copy, select all and paste
          // By default it's true
          enableInteractiveSelection: false,

          enableSuggestions: false,

          keyboardType: TextInputType.emailAddress,

          // Text the input as the password
          //obscureText: true,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(30.0),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(),
              ),
              filled: true,
              fillColor: Colors.green[50],
              hintText: "Enter name",
              hintStyle: const TextStyle(color: Colors.red),
              icon: const Icon(Icons.person),
              labelText: 'Name',
              labelStyle: const TextStyle(color: Colors.yellow),
          ),
            onChanged: (value) => print(value),
        ),
      ),
    ),


      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 20.0),
        ),
      ),

      body: Container (
        width: double.infinity,
        child: ListView.builder(
          //padding: const EdgeInsets.all(10.0),
            itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: const ValueKey(123),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  print(direction);
                },
              //confirmDismiss: ,
              background: Container(
                color: Colors.red,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 40.0,
                ),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20.0),
              ),
                child: Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 4.0,
                  ),
                  child: ListTile(title: Text("Count => ${_listItems[index]}"),
                  ),
                ),
            );


            return ListTile(
              title: Text("Count => ${_listItems[index]}"),
            );

        },
            //separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.red,),
            itemCount: _listItems.length),



      Container(
          width: double.infinity,
          child: ListView.builder(itemCount: _listItems.length, itemBuilder: (BuildContext context, int index) {
            //return Text('Count: ${_listItems[index]}');
            return ListTile(
              title: Text("Count => ${_listItems[index]}"),
              subtitle: const Text('PK'),
              leading: const Icon(Icons.done),
              trailing: const Icon(Icons.close),
              onTap: () {
                print('Pressed ${_listItems[index]}');
                },
              );
            },
          )


          ListView(
            scrollDirection: Axis.horizontal,
            children: _listItems.map((e) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Count: $e'),
              );
            }).toList(),
          ),


          child: Image.network(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.DLPN-7eCy2KZKQcNG0jvAQHaEU%26pid%3DApi&f=1',
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                return Center(
                  child: Text('Loading image'),
                );
            },  errorBuilder: (BuildContext context, Object error, StackTrace st) {
                return Center (
                  child: Text('Error occurred'),
                );
            }),
          ),

        child: Image.asset(
        'asset/pic5.jpg',
         repeat: ImageRepeat.noRepeat,
         //alignment: Alignment.bottomCenter,
          //fit: BoxFit.scaleDown,
        ),


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


      ),



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



      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          print(_textController.text);
        },
      ),



      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Add"),
        icon: const Icon(Icons.add),
        onPressed: () {
          print("FAB pressed");

          // When we use the setState method it will call the build method
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.red[900],
        tooltip: 'Tooltip',
      ),
      */

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

  }
}



