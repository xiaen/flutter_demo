import 'package:flutter/material.dart';
import 'package:flutter_screen_recording/flutter_screen_recording.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';

class ScreenPage extends StatefulWidget {
  ScreenPage({Key key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  requestPermissions() async {
    // await PermissionHandler().requestPermissions([
    //   PermissionGroup.storage,
    //   PermissionGroup.photos,
    //   PermissionGroup.microphone,
    // ]);
    print(await Permission.storage.request().isGranted);
    print(await Permission.photos.request().isGranted);
    print(await Permission.microphone.request().isGranted);
  }

  @override
  void initState() {
    super.initState();
    requestPermissions();
    // startTimer();
  }

  startScreenRecord() async {
    // await Future.delayed(const Duration(milliseconds: 1000));
    // await FlutterScreenRecording.startRecordScreenAndAudio("Title1");
    await FlutterScreenRecording.startRecordScreen("Title2");
  }

  stopScreenRecord() async {
    String path = await FlutterScreenRecording.stopRecordScreen;
    print("Opening video----------$path");
    OpenFile.open(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("录屏")),
      body: Center(
          child: Column(
        children: <Widget>[
          Image.network(
              'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2802144128,2530753695&fm=26&gp=0.jpg'),
          RaisedButton(
              child: Text('录制'),
              onPressed: () {
                print('录制');
                startScreenRecord();
              }),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
              child: Text('停止'),
              onPressed: () {
                print('停止');
                stopScreenRecord();
              }),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
