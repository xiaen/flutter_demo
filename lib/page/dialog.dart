import 'package:flutter/material.dart';
import 'package:flutterDemo/page/common/MyDialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _showAleart() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示：'),
            content: Text('您确认删除吗？'),
            actions: [
              RaisedButton(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.pop(context, 'no');
                  }),
              RaisedButton(
                  child: Text('确定'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pop(context, 'yes');
                  })
            ],
          );
        });
    return res;
  }

  _showSimple() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('请选择答案：'),
            children: <Widget>[
              SimpleDialogOption(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('选择A'),
                ),
                onPressed: () {
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('选择B'),
                ),
                onPressed: () {
                  Navigator.pop(context, 'B');
                },
              ),
            ],
          );
        });
    return res;
  }

  _showBottomSheet() async {
    var res = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('单身'),
                  onTap: () {
                    Navigator.pop(context, '单身');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('已婚'),
                  onTap: () {
                    Navigator.pop(context, '已婚');
                  },
                )
              ],
            ),
          );
        });
    return res;
  }

  _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text('alert'),
                  onPressed: () async {
                    print(await _showAleart());
                  }),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  child: Text('simple'),
                  onPressed: () async {
                    print(await _showSimple());
                  }),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  child: Text('bottomSheet'),
                  onPressed: () async {
                    print(await _showBottomSheet());
                  }),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  child: Text('toast'),
                  onPressed: () {
                    _showToast();
                  }),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  child: Text('自定义dialog'),
                  onPressed: () {
                    print('z');
                    showDialog(
                        context: context,
                        builder: (context) {
                          return MyDialog(title: 'haha', conText: '嘻嘻');
                        });
                  })
            ],
          )),
    );
  }
}
