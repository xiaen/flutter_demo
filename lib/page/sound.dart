import 'package:flutter/material.dart';

class SoundPage extends StatefulWidget {
  SoundPage({Key key}) : super(key: key);

  @override
  _SoundPageState createState() => _SoundPageState();
}

class _SoundPageState extends State<SoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('录音'),
      ),
      body: Text('录音'),
    );
  }
}
