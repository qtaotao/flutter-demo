import 'package:flutter/material.dart';
import 'package:flutter_app/app.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      //不显示标题栏上的Debug字样
      debugShowCheckedModeBanner: true,
      //主页面
      home: App(),
    );
  }
}
