import 'package:flutter/material.dart';

void main() => runApp(Channel());

class Channel extends StatefulWidget {
  @override
  ChannelPage createState() => ChannelPage();
}

class ChannelPage extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Channel"),
      ),
    );
  }
}
