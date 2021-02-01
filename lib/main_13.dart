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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 700,
      color: Colors.grey,
      // child: Stack(
      //   children: <Widget>[
      //     Align(
      //       alignment: Alignment.topLeft,
      //       child: Icon(
      //         Icons.home,
      //         size: 40,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.center,
      //       child: Icon(
      //         Icons.search,
      //         size: 40,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.bottomRight,
      //       child: Icon(
      //         Icons.send,
      //         size: 40,
      //         color: Colors.blue,
      //       ),
      //     ),
      //   ],
      // ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 50,
            child: Icon(
              Icons.home,
              size: 40,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.blue,
            ),
          ),
          Positioned(
            right: 50,
            top: 50,
            child: Icon(
              Icons.send,
              size: 40,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
