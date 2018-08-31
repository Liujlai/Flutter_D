import 'package:flutter/material.dart';

class secondPage extends StatefulWidget{
  @override
  secondPageState createState() => new secondPageState();
}

class secondPageState extends State<secondPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("dier ye "),
      ),
      body: new Center(
        child: new Text("dier ye jie mian "),
      ),
    );
  }
}