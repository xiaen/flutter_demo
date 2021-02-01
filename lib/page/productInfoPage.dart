import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductInfo extends StatefulWidget {
  Map arguments;
  ProductInfo({Key key, this.arguments}) : super(key: key);

  @override
  _ProductInfoState createState() => _ProductInfoState(arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;
  _ProductInfoState(this.arguments);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('商品详情'),
        ),
        body: Container(
          child: Text('${this.arguments["title"]}'),
        ));
  }
}
