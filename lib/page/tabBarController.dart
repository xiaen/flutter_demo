import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var countnum;
  @override
  void initState() {
    super.initState();
    countnum = 0;
    _tabController = new TabController(vsync: this, length: 4);

    _tabController.addListener(() {
      countnum = _tabController.index;
      print(_tabController.index);
      print(countnum);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('controllerTab'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: '推荐'),
            Tab(text: '关注'),
            Tab(text: '热门'),
            Tab(text: '娱乐'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('推荐${this.countnum}'),
          Text('关注${this.countnum}'),
          Text('热门${this.countnum}'),
          Text('娱乐${this.countnum}'),
        ],
      ),
    );
  }
}
