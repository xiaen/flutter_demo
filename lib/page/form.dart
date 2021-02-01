import 'package:flutter/material.dart';

class Form2Page extends StatefulWidget {
  Form2Page({Key key}) : super(key: key);

  @override
  _Form2PageState createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {
  var _defaultName = new TextEditingController();
  var _userName;
  var _password;
  var msg = '';
  @override
  void initState() {
    super.initState();
    this._defaultName.text = '初始用户名';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单组件'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            // TextField(),
            // SizedBox(height: 10),
            // TextField(
            //   maxLength: 10,
            //   decoration: InputDecoration(
            //       hintText: 'placholder提示文字', border: OutlineInputBorder()),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   maxLines: 4,
            //   decoration: InputDecoration(
            //       hintText: '多行文本框', border: OutlineInputBorder()),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   obscureText: true,
            //   decoration:
            //       InputDecoration(hintText: '密码', border: OutlineInputBorder()),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //       hintText: '请输入用户名',
            //       border: OutlineInputBorder(),
            //       labelText: '用户名'),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   obscureText: true,
            //   decoration: InputDecoration(
            //       hintText: '请输入密码',
            //       border: OutlineInputBorder(),
            //       labelText: '密码'),
            // ),
            SizedBox(height: 10),
            TextField(
              controller: _defaultName,
              decoration:
                  InputDecoration(hintText: '请输入用户名', icon: Icon(Icons.people)),
              onChanged: (value) {
                setState(() {
                  this._userName = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.keyboard), hintText: '请输入密码'),
              onChanged: (value) {
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    print(_userName);
                    print(_password);
                    setState(() {
                      this.msg = this._userName + this._password;
                    });
                  },
                  child: Text('登录'),
                  textColor: Colors.white,
                  color: Colors.blue,
                )),
            Text(this.msg)
          ],
        ),
      ),
    );
  }
}
