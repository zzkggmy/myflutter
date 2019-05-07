import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(Me());

class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MePage(),
    );
  }
}

class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return meState();
  }
}

class meState extends State {
  Widget _meUi() {
    return new Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(0, 45.0, 0, 15.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              Image(
                image: AssetImage("images/user.png"),
                width: 80,
                height: 80,
              ),
              new Column(
                children: <Widget>[
                  new Text(
                    "王美丽",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 22),
                  ),
                  new Text(
                    "你有病",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          ),
          divideItem(),
          detailItem("images/line.png", "1111"),
          divideItem(),
          detailItem("images/noti.png", "2222"),
          detailItem("images/noti.png", "3333"),
          detailItem("images/noti.png", "4444"),
          detailItem("images/noti.png", "5555"),
          detailItem("images/noti.png", "6666"),
          divideItem(),
          detailItem("images/setting.png", "设置"),
        ],
      ),
    );
  }

  Widget detailItem(String imgPath, String title) {
    return new Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: new Row(
        children: <Widget>[
          Image(
            image: AssetImage(imgPath),
            width: 17,
            height: 17,
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: new Text(
              title,
              style: TextStyle(fontSize: 14, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Image(
              alignment: Alignment.bottomRight,
              image: AssetImage("images/rightarrow.png"),
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
  }

  Widget divideItem() {
    return new Container(
      // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.grey[100],
      width: double.infinity,
      height: 15.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _meUi(),
    );
  }
}
