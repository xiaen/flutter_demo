import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('你好，嘻嘻嘻嘻嘻'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '哇哈哈老师的咖啡机可怜的封疆大吏康师傅的苏里科夫短斤少两善良的咖啡机懒得说发善良的咖啡机',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 5.0),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 2,
        ),
        width: 300.0,
        height: 400.0,
        decoration: BoxDecoration(
            color: Colors.blue[300],
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            )),
        // padding: EdgeInsets.all(50),
        padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        // margin: EdgeInsets.all(100),
        margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(0.4),
        // transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
