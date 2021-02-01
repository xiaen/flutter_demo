import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('你好啊'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: <Widget>[
    //     ListTile(
    //       leading: Icon(Icons.settings, color: Colors.yellow, size: 20),
    //       title: Text('标题'),
    //       subtitle: Text('内容内容内容内容哪里开始的房间里都是咖啡机的螺蛳粉净空法师打发了对肌肤的肯定是弗拉索夫的路上风景都是'),
    //       trailing: Image(
    //         image: NetworkImage(
    //             'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1694681277,1453280371&fm=26&gp=0.jpg'),
    //       ),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.settings, color: Colors.yellow, size: 20),
    //       title: Text('标题'),
    //       subtitle: Text('内容内容内容内容哪里开始的房间里都是咖啡机的螺蛳粉净空法师打发了对肌肤的肯定是弗拉索夫的路上风景都是'),
    //       trailing: Image(
    //         image: NetworkImage(
    //             'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1694681277,1453280371&fm=26&gp=0.jpg'),
    //       ),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.settings, color: Colors.yellow, size: 20),
    //       title: Text('标题'),
    //       subtitle: Text('内容内容内容内容哪里开始的房间里都是咖啡机的螺蛳粉净空法师打发了对肌肤的肯定是弗拉索夫的路上风景都是'),
    //       trailing: Image(
    //         image: NetworkImage(
    //             'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1694681277,1453280371&fm=26&gp=0.jpg'),
    //       ),
    //     )
    //   ],
    // );
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            decoration: BoxDecoration(color: Colors.pink),
          ),
          Container(
            child: ListView(
              children: <Widget>[
                Image.network(
                  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201307%2F25%2F20130725222557_f8AU4.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1613209463&t=ebc77bac64ceaa5209831c6d850b3d5a',
                  fit: BoxFit.cover,
                ),
                Text('我是标题')
              ],
            ),
            width: 180,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
