import 'package:flutter/material.dart';
import 'package:flutter_app/search/search_page.dart';



///我的
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(""),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
            child: Image.asset("images/no_account_tip.png"),
          ),
          new Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0),
            child: new RaisedButton(
              textColor: Colors.black,
              child: new Text('测试'),
            ),
          ),
        ],
      ),
    );
  }
}
