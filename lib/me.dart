import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class MePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return meState();
  }

}

class meState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("啊啊啊啊啊"),
    );
  }

}