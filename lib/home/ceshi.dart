import 'package:flutter/material.dart';

class ceshi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CeShiPageState();
  }

}

class _CeShiPageState extends State<ceshi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(

      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
      ///一个图标，大小16.0，灰色
      new Icon(

     Icons.alarm_on,
      size: 16.0,
      color: Colors.grey,
    ),
    ///间隔
    new Padding(padding: new EdgeInsets.only(left:5.0)),
    ///显示文本
    new Text(

    "渠本涛",
    //设置字体样式：颜色灰色，字体大小14.0
    style: new TextStyle(color: Colors.grey, fontSize: 14.0),
    //超过的省略为...显示
    overflow: TextOverflow.ellipsis,
    //最长一行
    maxLines: 1,
    ),

      ],
    );
  }
}