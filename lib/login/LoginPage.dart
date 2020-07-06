import 'package:flutter/material.dart';


/// 我的页面
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();

}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text("登录页面"),
        ),
      body:
         new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Text("账号"),
              ),
              new Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Text("账号"),
              ),
            ]
        ),

    );
  }
}
