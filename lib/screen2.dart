import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {

  // Adding the route name for the screen within the screen
  // Since the variable is static we can access it any where in our project
  static const routeName = '/screen-2';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Screen2"),
      ),


      /*
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      */
    );
  }
}