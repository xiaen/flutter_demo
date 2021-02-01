import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
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
    );
  }
}
