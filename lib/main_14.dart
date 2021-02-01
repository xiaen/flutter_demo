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
  //   var list = listData.map((value) {
  //     return Card(
  //       margin: EdgeInsets.all(10),
  //       child: Column(
  //         children: <Widget>[
  //           AspectRatio(
  //             aspectRatio: 1024 / 768,
  //             child: Image.network(value['imageUrl']),
  //           ),
  //           ListTile(
  //             leading: CircleAvatar(
  //               backgroundImage: NetworkImage(value['imageUrl']),
  //             ),
  //             title: Text(value['title']),
  //             subtitle: Text(value['author']),
  //           )
  //         ],
  //       ),
  //     );
  //   });
  //   return list.toList();
  // }

  @override
  Widget build(BuildContext context) {
    // return AspectRatio(
    //   aspectRatio: 4.0 / 2.0,
    //   child: Container(
    //     color: Colors.blue,
    //   ),
    // );
    // return ListView(
    //   children: <Widget>[
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: <Widget>[
    //           ListTile(
    //             title: Text('张三'),
    //             subtitle: Text('老师'),
    //           ),
    //           ListTile(
    //             title: Text('地址'),
    //           ),
    //           ListTile(
    //             title: Text('邮编'),
    //           )
    //         ],
    //       ),
    //     ),
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: <Widget>[
    //           ListTile(
    //             title: Text('张三'),
    //             subtitle: Text('老师'),
    //           ),
    //           ListTile(
    //             title: Text('地址'),
    //           ),
    //           ListTile(
    //             title: Text('邮编'),
    //           )
    //         ],
    //       ),
    //     ),
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: <Widget>[
    //           ListTile(
    //             title: Text('张三'),
    //             subtitle: Text('老师'),
    //           ),
    //           ListTile(
    //             title: Text('地址'),
    //           ),
    //           ListTile(
    //             title: Text('邮编'),
    //           )
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1024 / 768,
                child: Image.network(value['imageUrl']),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value['imageUrl']),
                ),
                title: Text(value['title']),
                subtitle: Text(value['author']),
              )
            ],
          ),
        );
      }).toList(),
      // children: this._getData(),
      // children: <Widget>[
      // Card(
      //   margin: EdgeInsets.all(10),
      //   child: Column(
      //     children: <Widget>[
      //       AspectRatio(
      //         aspectRatio: 1024 / 768,
      //         child: Image.network(
      //             'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201303%2F16%2F173710lvx470i4348z6i6z.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613284154&t=d63ba39f84404b91ee3b001244e6f26b'),
      //       ),
      //       ListTile(
      //         // leading: ClipOval(
      //         //   child: Image.network(
      //         //     'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201303%2F16%2F173710lvx470i4348z6i6z.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613284154&t=d63ba39f84404b91ee3b001244e6f26b',
      //         //     fit: BoxFit.cover,
      //         //     width: 50,
      //         //     height: 50,
      //         //   ),
      //         // ),
      //         leading: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //               'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201303%2F16%2F173710lvx470i4348z6i6z.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613284154&t=d63ba39f84404b91ee3b001244e6f26b'),
      //         ),
      //         title: Text('xxxx'),
      //         subtitle: Text('xxxxx'),
      //       )
      //     ],
      //   ),
      // )
      // ],
    );
  }
}
