import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterDemo/utils/size_fit.dart';
import '../utils/extension/int_extension.dart';
import '../utils/extension/double_extension.dart';

class WHfitPage extends StatelessWidget {
  const WHfitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(standardSize: 750);
    print("逻辑宽度高度 ${HYSizeFit.screenWidth} * ${HYSizeFit.screenHeight}");
    return Scaffold(
      appBar: AppBar(title: Text("title")),
      body: Center(
          child: Container(
        alignment: Alignment.center,
        width: 400.rpx,
        height: 400.rpx,
        color: Colors.red,
        child: Text("hello world", style: TextStyle(fontSize: 40.0.rpx)),
      )),
    );
  }
}
