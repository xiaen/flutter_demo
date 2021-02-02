import 'package:flutter/material.dart';
import '../searchPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text('跳转到搜索页面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            }),
        SizedBox(
          height: 10,
        ),
        // RaisedButton(
        //     child: Text('跳到搜索'),
        //     onPressed: () {
        //       Navigator.pushNamed(context, '/search',
        //           arguments: {"id": 123, "title": '哇哈哈'});
        //     }),
        // SizedBox(
        //   height: 10,
        // ),
        RaisedButton(
            child: Text('跳到商品列表'),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            }),
        // SizedBox(
        //   height: 10,
        // ),
        // RaisedButton(
        //   child: Text('tabbar'),
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/tabBarDemo');
        //   },
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        // RaisedButton(
        //   child: Text('tabbarcontroller'),
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/tabBarController');
        //   },
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        RaisedButton(
          child: Text('按钮页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/button');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
            child: Text('表单组件'),
            onPressed: () {
              Navigator.pushNamed(context, '/form2');
            }),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
            child: Text('多选框'),
            onPressed: () {
              Navigator.pushNamed(context, '/checkBox');
            }),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
            child: Text('单选框'),
            onPressed: () {
              Navigator.pushNamed(context, '/radio');
            }),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
            child: Text('表单例子'),
            onPressed: () {
              Navigator.pushNamed(context, '/formDemo');
            }),
        SizedBox(
          height: 10,
        ),
        // RaisedButton(
        //     child: Text('日期时间'),
        //     onPressed: () {
        //       Navigator.pushNamed(context, '/dateTime');
        //     }),
        // SizedBox(
        //   height: 10,
        // ),
        RaisedButton(
            child: Text('dialog'),
            onPressed: () {
              Navigator.pushNamed(context, '/dialog');
            }),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
            child: Text('适配'),
            onPressed: () {
              Navigator.pushNamed(context, '/WHfit');
            })
      ],
    );
  }
}
