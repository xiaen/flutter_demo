import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
for count in range(20):
  asomebot.forward(20, 40, 20, 0, 400, 400)
asomebot.ready(5, 6, 7, 8)''';
// a1=20, a2=40, a3=20, m=0, s1=150, s2=300
    var url = 'http://192.168.2.219:8003';
    print('------------------start');
    Dio dio = Dio();
    await dio.post(url, data: code);

    // var httpClient = new HttpClient();
    // var request = await httpClient.postUrl(Uri.parse(url));
    // request.headers.set('Content-1-Length', 900);
    // request.add(utf8.encode(code));
    // await request.close();

    // var headers = Map<String, String>();
    // headers["Content-Length"] = '109';

    // var jsonParams = utf8.encode(code);

    // var httpClient = http.Client();

    // var uri = Uri.parse(url);

    // http.Response response =
    //     await httpClient.post(uri, body: jsonParams, headers: headers);
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
