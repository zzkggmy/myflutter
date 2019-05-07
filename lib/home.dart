import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomPageState();
  }
}

class HomPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget _gridView() {
      return new CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(15.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10.0,
              crossAxisCount: 3,
              children: <Widget>[
                const Text(
                  'He\'d have you all unravel at the',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                const Text(
                  'Heed not the rabble',
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Sound of screams but the',
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Who scream',
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Revolution is coming...',
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Revolution, they...',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: _gridView(),
    );
  }
}
