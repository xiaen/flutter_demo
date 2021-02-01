import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title = '表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是标题'),
          ),
          ListTile(
            title: Text('我是标题'),
          ),
          ListTile(
            title: Text('我是标题'),
          ),
        ],
      ),
    );
  }
}
