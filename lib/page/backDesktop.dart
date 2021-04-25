import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterDemo/page/android_back_desktop.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:flutter_sound_lite/public/flutter_sound_player.dart';
import 'package:path_provider/path_provider.dart';

class BackDesktop extends StatefulWidget {
  BackDesktop({Key key}) : super(key: key);

  @override
  _BackDesktopState createState() => _BackDesktopState();
}

class _BackDesktopState extends State<BackDesktop> {
  FlutterSoundPlayer _soundPlayer;
  String _appDocumentRoot;
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    Directory appDocumentDir = await getApplicationDocumentsDirectory();
    _appDocumentRoot = appDocumentDir.path;
    _soundPlayer = await FlutterSoundPlayer()
        .openAudioSession(device: AudioDevice.speaker);
  }

  sound() async {
    // final filePath = r"./123.wav";
    // final filePath = "assets/sounds/123.wav";
    // var f = File(filePath);
    // Uint8List bytes = await f.readAsBytes();
    ByteData byteData = await rootBundle.load('assets/sounds/123.wav');
    Uint8List bytes1 = byteData.buffer.asUint8List();
    var f1 = File('$_appDocumentRoot/321.wav');
    await f1.writeAsBytes(bytes1);
    var f = File('$_appDocumentRoot/321.wav');
    Uint8List bytes = await f.readAsBytes();
    print(bytes);
    await _soundPlayer.startPlayer(
      fromDataBuffer: bytes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('返回桌面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            // AndroidBackDesktop.backToDesktop();
            print('sldkfjldsfj');
            sound();
          },
        ),
      ),
    );
  }
}
