import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('多选框'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Checkbox(
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
            activeColor: Colors.red,
          ),
          Text(this.flag ? '选中' : '未选中'),
          Divider(),
          CheckboxListTile(
              value: this.flag,
              onChanged: (value) {
                setState(() {
                  this.flag = value;
                });
              },
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Icon(Icons.ac_unit),
              selected: this.flag),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
            title: Text('标题啊'),
            subtitle: Text('二级标题啊'),
            secondary: Image.network(
                'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2799097555,477535385&fm=26&gp=0.jpg'),
          )
        ],
      ),
    );
  }
}
