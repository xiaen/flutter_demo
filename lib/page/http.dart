import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  _runBot() async {
    var code = '''import asomebot
import hcsr04
hcsr04.open(3, 2)
asomebot.ready(5, 6, 7, 8)
asomebot.home()
asomebot.forward()''';
    var url = 'http://192.168.2.219:8003';
    print('------------------start');
    Dio dio = Dio(BaseOptions(
      contentType: Headers.formUrlEncodedContentType,
    ));

    await dio.post(url, data: code);

    // var httpClient = new HttpClient();
    // var request = await httpClient.postUrl(Uri.parse(url));
    // request.add(utf8.encode(code));
    // await request.close();
    print('------------------end');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('表单组件'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('发送http'),
            onPressed: () {
              _runBot();
            },
          ),
        ));
  }
}
