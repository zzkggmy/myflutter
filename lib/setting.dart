import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Setting());

class Setting extends StatefulWidget {
  @override
  // TODO: implement createState
  SettingPage createState() => new SettingPage();
}

class SettingPage extends State {
  Widget _body() {
    return Column(
      children: <Widget>[
        new Container(
          color: Colors.grey[50],
          width: double.infinity,
          height: 2,
        ),
        _item("账号与安全"),
        _blackItem(),
        _item("新消息提醒"),
        _devideLine(),
        _item("勿扰模式"),
        _devideLine(),
        _item("聊天"),
        _devideLine(),
        _item("隐私")
      ],
    );
  }

  Widget _item(String _title) {
    return new Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      width: double.infinity,
      child: new Row(
        children: <Widget>[
          new Text(
            _title,
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
          new Expanded(
            child: Image(
              alignment: Alignment.bottomRight,
              width: 20,
              height: 20,
              image: AssetImage("images/rightarrow.png"),
            ),
          )
        ],
      ),
    );
  }

  Widget _blackItem() {
    return new Container(
      color: Colors.grey[100],
      width: double.infinity,
      height: 10,
    );
  }

  Widget _devideLine() {
    return new Container(
      color: Colors.grey[100],
      width: double.infinity,
      height: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[100],
        title: new Text(
          "设置",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: _body(),
    );
  }
}
