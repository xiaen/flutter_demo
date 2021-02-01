import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('你好，flutter'),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  // List<Widget> _getList() {
  //   List<Widget> list = new List();
  //   for (var i = 0; i < 20; i++) {
  //     list.add(ListTile(
  //       title: Text('我是${i + 1}标题'),
  //       subtitle: Text('我是内容'),
  //     ));
  //   }
  //   return list;
  // }

  // List<Widget> _getList() {
  //   var list = listData.map((value) {
  //     return ListTile(
  //       leading: Image.network(value['imageUrl']),
  //       title: Text(value['title']),
  //       subtitle: Text(value['author']),
  //     );
  //   });
  //   return list.toList();
  // }

  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]['imageUrl']),
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
