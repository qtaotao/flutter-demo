import 'package:flutter/material.dart';
import 'package:flutter_app/FeedPage.dart';
import 'package:flutter_app/ListPage.dart';

/// 应用程序主页面
class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MessagePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      //不显示标题栏上的Debug字样
      debugShowCheckedModeBanner: false,
      title: "测试页面",
    );
  }
}
