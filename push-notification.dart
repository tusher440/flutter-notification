import 'package:flutter/material.dart';

class Push extends StatefulWidget {
  //const Push({Key? key}) : super(key: key);

  @override
  _PushState createState() => _PushState();
}

class _PushState extends State<Push> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Push notification"),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("You will not message soon"),
          ],


        ),
      ),

    );


  }
}
