import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('浮动'),
        onPressed: () {},
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('按钮1'),
              textColor: Colors.white,
              color: Colors.blue,
              elevation: 10,
              onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 40,
            child: RaisedButton(
              child: Text('自定义宽高'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 60,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text('自适应宽'),
                  splashColor: Colors.red,
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton.icon(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {},
              icon: Icon(Icons.search),
              label: Text('搜索')),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
              child: Text('圆角按钮'),
              textColor: Colors.white,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: RaisedButton(
                child: Text('圆形按钮'),
                textColor: Colors.white,
                color: Colors.blue,
                shape: CircleBorder(side: BorderSide(color: Colors.white)),
                onPressed: () {}),
          ),
          SizedBox(height: 10),
          FlatButton(
            onPressed: () {},
            child: Text('扁平按钮'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('无背景按钮'),
                  // textColor: Colors.red,
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      child: Text('登陆'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      elevation: 10,
                      onPressed: () {}),
                  RaisedButton(
                      child: Text('注册'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      elevation: 10,
                      onPressed: () {}),
                  MyButton(
                    text: '自定义按钮',
                    width: 200,
                    height: 60,
                    pressed: () {
                      print('object');
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final text;
  final pressed;
  const MyButton(
      {this.width = 100,
      this.height = 40,
      this.text = '',
      // ignore: avoid_init_to_null
      this.pressed = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
