import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  Product({Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text('返回'), onPressed: () => Navigator.of(context).pop()),
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text('跳到商品详情'),
              onPressed: () {
                Navigator.pushNamed(context, '/productInfo',
                    arguments: {"id": '110', "title": '小米手机'});
              })
        ],
      ),
    );
  }
}
