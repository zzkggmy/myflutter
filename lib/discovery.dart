import 'package:flutter/material.dart';

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
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DiscoveryMain();
  }
}

class DiscoveryMain extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("Discovery"),
    );
  }
}
