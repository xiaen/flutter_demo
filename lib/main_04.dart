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
          title: Text('你好，flutter'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(color: Colors.yellow),
        child: Image.network(
          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2916614428,3435446859&fm=26&gp=0.jpg',
          // alignment: Alignment.topCenter,
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,
          fit: BoxFit.scaleDown,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}
