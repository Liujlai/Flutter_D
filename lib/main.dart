import 'package:flutter/material.dart';
import 'home/home.dart';
import 'second/secondPage.dart';
import 'my/my.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new MyIndex(),
    );
  }
}
class MyIndex extends StatefulWidget{
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState  extends State<MyIndex> with SingleTickerProviderStateMixin{
   TabController controller;
   
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new home(),
            new secondPage(),
            new my()
          ]),
      bottomNavigationBar: new Material(
        color: Colors.,
        child: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(text: "首页",icon: new Icon(Icons.home)),
              new Tab(text: "消息",icon: new Icon(Icons.message),),
              new Tab(text: "我的",icon: new Icon(Icons.face),)
            ]),
      ),
    );
  }
  
}
