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
      color: Colors.pink,
      // alignment: Alignment.topLeft,
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     IconContent(
      //       Icons.search,
      //       color: Colors.blue,
      //       size: 40,
      //     ),
      //     IconContent(
      //       Icons.settings,
      //       color: Colors.red,
      //       size: 40,
      //     ),
      //     IconContent(
      //       Icons.home,
      //       color: Colors.orange,
      //       size: 40,
      //     ),
      //   ],
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconContent(
            Icons.search,
            color: Colors.blue,
            size: 40,
          ),
          IconContent(
            Icons.settings,
            color: Colors.red,
            size: 40,
          ),
          IconContent(
            Icons.home,
            color: Colors.orange,
            size: 40,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IconContent extends StatelessWidget {
  double size = 30.0;
  Color color = Colors.red;
  IconData icon;
  IconContent(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
