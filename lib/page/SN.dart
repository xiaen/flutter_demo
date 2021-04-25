import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterDemo/page/serial_plugin.dart';

class SNPage extends StatefulWidget {
  SNPage({Key key}) : super(key: key);

  @override
  _SNPageState createState() => _SNPageState();
}

class _SNPageState extends State<SNPage> {
  String _serial = 'Unknown';

  @override
  void initState() {
    super.initState();
    initSerial();
  }

  Future<void> initSerial() async {
    String serial;
    try {
      serial = await SerialPlugin.serial;
    } on PlatformException {
      serial = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      _serial = serial;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("sn")),
        body: Center(
          child: Text('序列号: $_serial\n'),
        ));
  }
}
