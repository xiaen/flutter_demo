import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.arguments != null ? this.arguments['title'] : '搜索'),
      ),
      body: ListView(
        children: <Widget>[
          Text('我是搜索页面${this.arguments != null ? this.arguments["id"] : 0}'),
          RaisedButton(
              child: Text('登录'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
              child: Text('注册'),
              onPressed: () {
                Navigator.pushNamed(context, '/registerFirst');
              })
        ],
      ),
    );
  }
}
