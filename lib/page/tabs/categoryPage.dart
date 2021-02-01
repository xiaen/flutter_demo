import 'package:flutter/material.dart';
import '../formPage.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text('表单传值跳转'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FormPage(title: '我是')));
              }),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            child: Text('跳到表单'),
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          )
        ],
      ),
    );
  }
}
