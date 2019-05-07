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
    final List<WordPair> _suggestions = <WordPair>[];
    final TextStyle fontBigger = const TextStyle(fontSize: 19.0);
    final Set<WordPair> _saved = new Set<WordPair>();

    Widget _buildRow(WordPair wordPair) {
      final bool alreadySaved = _saved.contains(wordPair);
      return new ListTile(
        title: new Text(
          wordPair.asPascalCase,
          style: fontBigger,
        ),
        trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            if (alreadySaved) {
              _saved.remove(wordPair);
            } else {
              _saved.add(wordPair);
            }
          });
        },
      );
    }

    Widget _buildSuggestions() {
      return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return new Divider();
          }
          final int index = i ~/ 2;
          if (i >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(i + 1));
          }
          return _buildRow(_suggestions[index]);
        },
      );
    }

    return Scaffold(
      body: _buildSuggestions(),
    );
  }
}
