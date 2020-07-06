import 'package:flutter/material.dart';

/// 详情页
class DailsPage extends StatefulWidget {
  final String name;

  DailsPage({this.name});
  @override
  State<StatefulWidget> createState() => _DailsPageState();
}

class _DailsPageState extends  State<DailsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      appBar: AppBar(
        title: const Text("详情页面"),

      ),
      drawer: new MyDrawer(), //抽屉
      body:
      Center(
    child: new Column(
    children: <Widget>[

    new Padding(
    padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
    child: Text(widget.name),
    ),
    new Padding(
    padding: const EdgeInsets.only(
    left: 10.0, top: 10.0, right: 10.0),
    child: new RaisedButton(
    textColor: Colors.black,
    child: new Text('测试'),
    ),
    ),
    new Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
      child: Image.network("http://img.kaiyanapp.com/5fe6afc957d5bb87d2234055ecaf78fc.jpeg?imageMogr2/quality/60/format/jpg",
          fit: BoxFit.cover),
    ),
    ],
    )
      ),

    );
  }
}
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "imgs/avatar.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "我的",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('添加收藏'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('去设置'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}