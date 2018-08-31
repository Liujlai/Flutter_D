import 'package:flutter/material.dart';

class my extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myState();
  }
}

class myState extends State<my>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("my ye "),
      ),
      body: new Center(
        child: new Text("my ye jie mian "),
      ),
    );
  }
}