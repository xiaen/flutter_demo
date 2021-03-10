import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterDemo/page/myDialog.dart';

class IsShowPage extends StatefulWidget {
  IsShowPage({Key key}) : super(key: key);

  @override
  _IsShowPageState createState() => _IsShowPageState();
}

class _IsShowPageState extends State<IsShowPage> {
  bool isShow = false;
  openTimer() {
    Timer.periodic(Duration(milliseconds: 3000), (t) {
      setState(() {
        isShow = false;
      });
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('自定义遮罩层'),
        ),
        body: MyDialogPage(
          isShow: isShow,
          text: '加载中',
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                  child: Text('显示'),
                  onPressed: () {
                    setState(() {
                      isShow = !isShow;
                      openTimer();
                    });
                  }),
            ],
          ),
        ));
  }
}
