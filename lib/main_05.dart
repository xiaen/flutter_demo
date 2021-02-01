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
    // return Center(
    //   child: Container(
    //     width: 300,
    //     height: 500,
    //     decoration: BoxDecoration(
    //         color: Colors.yellow,
    //         // borderRadius: BorderRadius.all(Radius.circular(150)),
    //         borderRadius: BorderRadius.circular(150),
    //         image: DecorationImage(
    //             image: NetworkImage(
    //                 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2916614428,3435446859&fm=26&gp=0.jpg'),
    //             fit: BoxFit.cover)),
    //   ),
    // );
    // return Center(
    //   child: ClipOval(
    //     child: Image.network(
    //       'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2916614428,3435446859&fm=26&gp=0.jpg',
    //       fit: BoxFit.cover,
    //       width: 300,
    //       height: 500,
    //     ),
    //   ),
    // );
    return Center(
      child: Container(
        child: Image.asset(
          'images/a.jpg',
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        width: 300,
        height: 300,
      ),
    );
  }
}
