import 'package:flutter/material.dart';

import '../template/listTemp.dart';
class secondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return secondPageState();
  }
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
        child: new listTemp()
      ),
    );
  }
}