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
        title: Text(
          '你好，flutter',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  // List<Widget> _getData() {
  //   List<Widget> list = new List();
  //   for (var i = 0; i < 20; i++) {
  //     list.add(Container(
  //       alignment: Alignment.center,
  //       color: Colors.blue,
  //       child: Text(
  //         '我是${i + 1}标题',
  //         style: TextStyle(color: Colors.white, fontSize: 20),
  //       ),
  //     ));
  //   }
  //   return list;
  // }
  // List<Widget> _getData() {
  //   var list = listData.map((value) {
  //     return Container(
  //       color: Colors.blue,
  //       child: ListView(
  //         children: <Widget>[
  //           ListTile(
  //             leading: Image.network(value['imageUrl']),
  //             title: Text(value['title']),
  //             subtitle: Text(value['author']),
  //           )
  //         ],
  //       ),
  //     );
  //   });
  //   return list.toList();
  // }
  // List<Widget> _getData() {
  //   var list = listData.map((value) {
  //     return Container(
  //       child: Column(
  //         children: <Widget>[
  //           Image.network(value['imageUrl']),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           Text(value['title'])
  //         ],
  //       ),
  //       decoration: BoxDecoration(
  //           border: Border.all(
  //               color: Color.fromRGBO(233, 233, 233, 0.8), width: 1)),
  //     );
  //   });
  //   return list.toList();
  // }

  Widget _getListData(context, index) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(
            listData[index]['imageUrl'],
            fit: BoxFit.cover,
          ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(listData[index]['title'])
          Align(
            alignment: Alignment(0, 0.9),
            child: Text(
              listData[index]['title'],
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.8), width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   // childAspectRatio: 0.5,
    //   padding: EdgeInsets.all(10),
    //   children: this._getData(),
    // );
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.33),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
