import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var sex = 1;
  var hot = 1;
  var flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选框'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('男'),
              Radio(
                  value: 1,
                  groupValue: this.sex,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      this.sex = 1;
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text('女'),
              Radio(
                  value: 2,
                  groupValue: this.sex,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      this.sex = 2;
                    });
                  }),
              SizedBox(width: 50),
              Text(this.sex == 1 ? '男' : '女')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          RadioListTile(
            value: 1,
            groupValue: this.hot,
            onChanged: (value) {
              setState(() {
                this.hot = 1;
              });
            },
            title: Text('帮助'),
            secondary: Icon(Icons.help),
            selected: this.hot == 1,
          ),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
            value: 2,
            groupValue: this.hot,
            onChanged: (value) {
              setState(() {
                this.hot = 2;
              });
            },
            title: Text('篮球'),
            secondary: Icon(Icons.ac_unit),
            selected: this.hot == 2,
          ),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
            value: 3,
            groupValue: this.hot,
            onChanged: (value) {
              setState(() {
                this.hot = 3;
              });
            },
            title: Text('全'),
            subtitle: Text('耳机'),
            secondary: Image.network(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=274318705,838677184&fm=26&gp=0.jpg'),
            selected: this.hot == 3,
          ),
          SizedBox(
            height: 50,
          ),
          Switch(
              value: this.flag,
              onChanged: (value) {
                setState(() {
                  this.flag = value;
                });
              }),
          Text(this.flag ? '打开' : '关闭')
        ],
      ),
    );
  }
}
