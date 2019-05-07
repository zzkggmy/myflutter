import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutte/discovery.dart';
import 'package:myflutte/home.dart';
import 'package:myflutte/me.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    int indexSelect = 1;

    var _pageList = [new Home(), new Discovery(), new Me()];

    return Scaffold(
      appBar: new AppBar(
        title: Text("呱呱"),
      ),
      body: _pageList[indexSelect],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text("Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 14.0))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.disc_full,
                color: Colors.black,
              ),
              title: Text("Giao",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 14.0))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_subway,
                color: Colors.black,
              ),
              title: Text("Discover",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 14.0))),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: indexSelect,
        fixedColor: Colors.deepPurple,
        onTap: (index) {
          setState(() {
        
            indexSelect = index;
          });
        },
      ),
    );
  }
}
