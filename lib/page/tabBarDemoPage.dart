import 'package:flutter/material.dart';

class TabBarDemoPage extends StatefulWidget {
  TabBarDemoPage({Key key}) : super(key: key);

  @override
  _TabBarDemoPageState createState() => _TabBarDemoPageState();
}

class _TabBarDemoPageState extends State<TabBarDemoPage> {
  String msg = '内容a';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text('tabbar'),
              // backgroundColor: Colors.pink,
              centerTitle: true,
              // iconTheme: IconThemeData(color: Colors.red, size: 30, opacity: 0.5),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  setState(() {
                    this.msg = 'menu';
                  });
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.msg = 'search';
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    setState(() {
                      this.msg = 'settings';
                    });
                  },
                )
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: '热门'),
                  Tab(text: '推荐'),
                  Tab(text: '新闻'),
                  Tab(text: '娱乐'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Text('热门'),
                Text('推荐'),
                Text('新闻'),
                Text('娱乐'),
              ],
            )));
  }
}
