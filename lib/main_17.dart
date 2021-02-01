import 'package:flutter/material.dart';
import 'package:flutterDemo/page/formPage.dart';
import 'package:flutterDemo/page/searchPage.dart';
import 'page/tabsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsPage(),
      routes: {
        '/form2': (context) => FormPage(),
        '/search2': (context) => SearchPage(),
      },
    );
  }
}

// 自定义有状态组件
// class HomeContent extends StatefulWidget {
//   HomeContent({Key key}) : super(key: key);
//   @override
//   _HomeContentState createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   int countNum = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(
//           height: 200,
//         ),
//         Chip(label: Text('${this.countNum}')),
//         SizedBox(height: 50),
//         RaisedButton(
//             child: Text('按钮'),
//             textColor: Theme.of(context).accentColor,
//             onPressed: () {
//               setState(() {
//                 this.countNum++;
//               });
//             })
//       ],
//     );
//   }
// }

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int countNum = 0;
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.countNum++;
                this.list.add('第${this.countNum}集');
              });
            })
      ],
    );
  }
}
