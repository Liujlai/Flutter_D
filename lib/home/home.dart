import 'package:flutter/material.dart';

class home extends StatefulWidget{
  @override
  homeState createState() => new homeState();
}

class homeState extends State<home>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("shoy ye "),
      ),
      body: new Center(
        child: new Text("shou ye jie mian "),
      ),
    );
  }
}