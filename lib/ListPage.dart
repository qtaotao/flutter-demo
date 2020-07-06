import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'MessagePage.dart';
import 'channel_page.dart';


/// 应用程序主页面
class ListPage extends StatelessWidget {
  final List<String> _suggestions = <String>[];
  final Set<String> _saved = new Set<String>();   // 新增本行
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  BuildContext context2;

  @override
  Widget build(BuildContext context) {
    context2=context;
    return DefaultTabController(
      //tab数量
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Stack(
            children: <Widget>[
              Align(
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: new Text("通知集合"),
                ),
                alignment: FractionalOffset.center,
              ),

            ],
          ),
        ),
        body: _buildSuggestions(),
      ),
    );
  }
  Widget _buildRow(String pair) {
    final bool alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair,
        style: _biggerFont,
      ),
      trailing: new Icon(   // 新增代码开始 ...
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {      // 增加如下 9 行代码...
        if (alreadySaved) {
          _saved.remove(pair);
        } else {
          _saved.add(pair);
        }
        Navigator.push(context2, new MaterialPageRoute(builder: (context)=>new ChannelPage()));
      },
    );
  }
  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,

        // 对于每个建议的单词对都会调用一次 itemBuilder，
        // 然后将单词对添加到 ListTile 行中
        // 在偶数行，该函数会为单词对添加一个 ListTile row.
        // 在奇数行，该函数会添加一个分割线的 widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。

        itemBuilder: (BuildContext _context, int i) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) {
            return new Divider();
          }

         for(int i=0;i<10;i++){
           _suggestions.add("渠本涛"+i.toString()+"");
         }
          return _buildRow(_suggestions[i]);
        }
    );
  }
}


