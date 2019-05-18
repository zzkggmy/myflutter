import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(Discovery());

class Discovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DiscoveryPage(),
    );
  }
}

class DiscoveryPage extends StatefulWidget {
  @override
  DiscoveryMain createState() => new DiscoveryMain();
}

class DiscoveryMain extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget _buildList() {
      return ListView.builder(
        itemExtent: 100,
        itemBuilder: (BuildContext uildContext,int index){
          return new Text("呱呱",style: TextStyle(color: Colors.green,fontSize: 18),);
        },
      );
    }

    return Scaffold(
      body: _buildList(),
    );
  }
}
