import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  var _userName = '';
  var _sex = 1;
  var _info = '';
  var _isMarry = false;
  _getSex(value) {
    setState(() {
      this._sex = 2;
    });
  }

  List hobby = [
    {
      "title": "抽烟",
      "checked": false,
    },
    {
      "title": "喝酒",
      "checked": false,
    },
    {
      "title": "烫头",
      "checked": true,
    },
  ];

  List<Widget> _getList() {
    List<Widget> list = new List();
    list.add(
      Container(
        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
        alignment: Alignment.centerRight,
        child: Text('爱好：'),
        width: 70,
      ),
    );
    for (var i = 0; i < this.hobby.length; i++) {
      list.add(
        Expanded(
          child: CheckboxListTile(
            value: this.hobby[i]['checked'],
            onChanged: (value) {
              setState(
                () {
                  this.hobby[i]['checked'] = value;
                },
              );
            },
            title: Text(this.hobby[i]['title']),
            selected: this.hobby[i]['checked'],
          ),
          flex: 1,
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单例子'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  alignment: Alignment.centerRight,
                  child: Text('用户名：'),
                  width: 70,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "请输入用户名", border: OutlineInputBorder()),
                    onChanged: (value) {
                      setState(() {
                        this._userName = value;
                      });
                    },
                  ),
                  flex: 1,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  alignment: Alignment.centerRight,
                  child: Text('性别：'),
                  width: 70,
                ),
                Expanded(
                    child: RadioListTile(
                      value: 1,
                      groupValue: this._sex,
                      onChanged: (value) {
                        setState(() {
                          this._sex = 1;
                        });
                      },
                      title: Text('男'),
                      selected: this._sex == 1,
                    ),
                    flex: 1),
                Expanded(
                  child: RadioListTile(
                    value: 2,
                    groupValue: this._sex,
                    onChanged: this._getSex,
                    title: Text('女'),
                    selected: this._sex == 2,
                  ),
                  flex: 1,
                )
              ],
            ),
            Row(children: this._getList()),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  alignment: Alignment.centerRight,
                  child: Text('备注：'),
                  width: 70,
                ),
                Expanded(
                  child: TextField(
                    maxLines: 5,
                    maxLength: 99,
                    decoration: InputDecoration(
                        hintText: '请输入备注', border: OutlineInputBorder()),
                    onChanged: (value) {
                      setState(() {
                        this._info = value;
                      });
                    },
                  ),
                  flex: 1,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  alignment: Alignment.centerRight,
                  child: Text('婚否：'),
                  width: 70,
                ),
                Switch(
                  value: this._isMarry,
                  onChanged: (value) {
                    setState(() {
                      this._isMarry = value;
                    });
                  },
                ),
                Text(this._isMarry ? '已婚' : '单身')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text('登录'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      print(this._userName);
                      print(this._sex);
                      print(this.hobby);
                      print(this._info);
                      print(this._isMarry);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
