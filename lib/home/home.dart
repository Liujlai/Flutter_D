import 'package:flutter/material.dart';

import 'input.dart';
class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homeState();
  }
}

class homeState extends State<home>{

  TextEditingController controller;
  String active = "test";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("shoy ye "),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            new TextField(
              controller: controller,
              onChanged: _onChanged,
            ),
            new Input(active: active,)

          ],
        )
      ),
    );
  }
  void _onChanged(String value){
    setState(() {
      active = value;
    });
  }
}

