import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myflutte/channel.dart';
import 'package:myflutte/setting.dart';

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
      color: Colors.grey[50],
      padding: const EdgeInsets.fromLTRB(0, 45.0, 0, 15.0),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(15, 15.0, 15, 35.0),
            color: Colors.white,
            child: new Row(
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
          ),
          divideItem(),
          detailItem(0, "images/line.png", "1111", 15),
          divideItem(),
          detailItem(1, "images/noti.png", "2222", 15),
          new Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            width: double.infinity,
            height: 2,
            color: Colors.grey[90],
          ),
          detailItem(2, "images/noti.png", "3333", 0),
          new Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            height: 2,
            color: Colors.grey[90],
          ),
          detailItem(3, "images/noti.png", "4444", 0),
          new Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            width: double.infinity,
            height: 2,
            color: Colors.grey[90],
          ),
          detailItem(4, "images/noti.png", "5555", 0),
          new Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            width: double.infinity,
            height: 2,
            color: Colors.grey[90],
          ),
          detailItem(5, "images/noti.png", "6666", 0),
          divideItem(),
          detailItem(6, "images/setting.png", "设置", 15),
        ],
      ),
    );
  }

  Widget detailItem(int type, String imgPath, String title, int _divide) {
    return new Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: new GestureDetector(
        onTap: () {
          switch (type) {
            case 0:
              showSnackBar("0");
              break;
            case 1:
              showSnackBar("1");
              break;
            case 2:
              showSnackBar("2");
              break;
            case 3:
              showSnackBar("3");
              break;
            case 4:
              showSnackBar("4");
              break;
            case 5:
        Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Channel();
              break;
            case 6:
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Setting()));
              break;
          }
        },
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
      ),
    );
  }

  Widget showSnackBar(String _content) {
    SnackBar snack = new SnackBar(
      content: new Text(_content),
      backgroundColor: Colors.black,
    );

    Scaffold.of(context).showSnackBar(snack);
    return snack;
  }

  Widget divideItem() {
    return new Container(
      // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.grey[100],
      width: double.infinity,
      height: 15.0,
    );
  }

  Widget divideLine() {
    return new Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: double.infinity,
      height: 2,
      color: Colors.grey[90],
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