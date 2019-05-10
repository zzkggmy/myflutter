import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Channel());

class Channel extends StatefulWidget {
  @override
  ChannelPage createState() => ChannelPage();
}

class ChannelPage extends State {
  List<String> _getDataList() {
    List<String> items = [];
    for (int i = 0; i < 102; i++) {
      items.add("王美丽$i");
    }
    return items;
  }

  List<Widget> _getGridChildList() {
    return _getDataList().map((item) => _getGridChild(item)).toList();
  }

  Widget _getGridChild(String item) {
    return new Container(
      color: Colors.blue,
      margin: const EdgeInsets.all(15),
      alignment: Alignment.center,
      child: new Text(
        item,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _gridBuild(BuildContext context, int index) {
    return new Text("1111");
  }

  Widget _itemBuild(BuildContext buildContext, int index) {
    return new Container(
      child: new GestureDetector(
        child: new GridView.count(
          crossAxisCount: 3,
          scrollDirection: Axis.vertical,
          children: _getGridChildList(),
        ),
      ),
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      color: Colors.white,
    );
  }

  PageController _pageController = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Channel"),
      ),
      body: PageView.builder(
        itemCount: 10,
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext buildContext, int index) =>
            _itemBuild(buildContext, index),
        controller: _pageController,
      ),
    );
  }
}
