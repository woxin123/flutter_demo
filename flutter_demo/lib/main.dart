import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_demo/interactive.dart';
import 'package:flutter_demo/layout.dart';

void main() {
  // runApp(MyApp());
  runApp(MyInteractiveApp());
}

// Stateless Widget 是不可变的,这意味着它的值都是不可变的
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
        title: "Startup Name Generator",
        theme: new ThemeData(
          primaryColor: Colors.white,
        ),
        home: new RandomWords()
    );
  }
}

// Stateful Widget 表示有状态的组建
class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Startup Name Generator"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list),
              onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();

          // 语法 "i ~/2" 表示 i 除以 2,但返回整形(向下取整),比如 i 为: 1, 2, 3, 4, 5
          // 时,结果为0, 1, 1, 2, 2, 这样可以计算出 ListView 中减去分割线后的实际单词对数量
          final index = i ~/ 2;
          // 如果是建议列表中的最后一个单词对
          if (index >= _suggestions.length) {
            // ...接着再生成10个单词对.然后添加到建议列表
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
                  (pair) {
                return new ListTile(
                  title: new Text(
                    pair.asPascalCase,
                    style: _biggerFont,
                  ),
                );
              }
          );
          final divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          ).toList();
          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Save Suggestions"),
            ),
            body: new ListView(children: divided,),
          );
        }
    ),
    );
  }
}