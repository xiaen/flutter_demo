import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 12,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: TabBar(
                  indicatorColor: Colors.blue,
                  indicatorWeight: 5,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  isScrollable: true,
                  tabs: [
                    Tab(text: '推荐'),
                    Tab(text: '关注'),
                    Tab(text: '热门'),
                    Tab(text: '北京'),
                    Tab(text: '推荐'),
                    Tab(text: '关注'),
                    Tab(text: '热门'),
                    Tab(text: '北京'),
                    Tab(text: '推荐'),
                    Tab(text: '关注'),
                    Tab(text: '热门'),
                    Tab(text: '北京'),
                  ],
                ))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text('推荐'),
              Text('关注'),
              Text('热门'),
              Text('北京'),
              Text('推荐'),
              Text('关注'),
              Text('热门'),
              Text('北京'),
              Text('推荐'),
              Text('关注'),
              Text('热门'),
              Text('北京'),
            ],
          ),
        ));
  }
}
