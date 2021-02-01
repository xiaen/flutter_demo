import 'package:flutter/material.dart';
import 'package:flutterDemo/page/searchPage.dart';
import 'package:flutterDemo/page/tabsPage.dart';

class RegisterThreePage extends StatefulWidget {
  RegisterThreePage({Key key}) : super(key: key);

  @override
  _RegisterThreePageState createState() => _RegisterThreePageState();
}

class _RegisterThreePageState extends State<RegisterThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('第三步'),
        ),
        body: Column(
          children: <Widget>[
            Text('输入密码'),
            RaisedButton(
                child: Text('tab页面注册确定'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return TabsPage(
                      index: 2,
                    );
                  }), (route) => false);
                  // Navigator.of(context).pop();
                }),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
                child: Text('搜索页面注册确定'),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return SearchPage();
                  }), (route) => false);
                  // Navigator.of(context).pop();
                })
          ],
        ));
  }
}
