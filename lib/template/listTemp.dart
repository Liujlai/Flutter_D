import 'package:flutter/material.dart';
//import 'dart:io';
//import 'dart:convert';
import 'package:pro3_app/detail.dart';
import '../second/new.dart';

class listTemp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return listState();
  }
}
class listState extends State<listTemp>{

  var data;

//  getDate() async{
//    var url = "http://jsonplaceholder.typicode.com/posts";
//    var httpClient = new HttpClient();
//    var result ;
//    try {
//      var request = await httpClient.getUrl(Uri.parse(url));
//      var response = await request.close();
//      if (response.statusCode == HttpStatus.OK){
//        var jsdata = await response.transform(utf8.decoder).join();
//        result = json.decode(jsdata);
//        print(result);
//      }else{
//        result = "Error getting Json data:status${response.statusCode}";
//      }
//    }catch(exception){
//      result = "Failed getting json data";
//    }
//    if(!mounted)return;
//    setState(() {
//      data = result;
//    });
//  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
//        itemCount: data == null ? 0 : data.length,
      itemCount:  newList.length,
        itemBuilder: (BuildContext context , int index){
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new ListTile(
                subtitle: new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
//                          new Text("biao ti",style: TextStyle(fontWeight: FontWeight.bold),),
                          new Expanded(
                            child: new Text(
                              newList[index].title,
                              style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                      new Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Text("时间："),
                                new Text(newList[index].time),
                              ],
                            )
                         ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
//                            child: new Text("id : "+data[index]["id"].toString()),
                            child: new Text("内容 : " + newList[index].content),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                trailing: new Icon(Icons.keyboard_arrow_right ,color: Colors.grey,),
//                onTap: () => _onTap(data[index]["id"].toString()),
                onTap: () => _onTap(newList[index].content),
              ),
            )
          );
        },
    );
  }
  void _onTap(String id){
    Navigator.of(context).push(
      new PageRouteBuilder(
          opaque: false,
          pageBuilder: (BuildContext context,_ ,__){
            return new Detail(id);
          },
      transitionsBuilder: (_,Animation<double> animation,__,Widget child){
            return new FadeTransition(
                opacity: animation,
                child: new SlideTransition(position: new Tween<Offset>(
                  begin: const Offset(0.0,1.0),
                  end: Offset.zero,
                ).animate(animation),child: child,
                ),
            );
      }
      )
    );
  }
}