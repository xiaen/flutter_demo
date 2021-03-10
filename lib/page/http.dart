import 'dart:convert';
import 'dart:io';

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
for count in range(10):
  asomebot.forward(20, 40, 20, 0, 300, 600)
asomebot.home()
asomebot.ready(5, 6, 7, 8)''';
// a1=20, a2=40, a3=20, m=0, s1=150, s2=300
    var url = 'http://192.168.2.222:8003';
    var flag;
    print('------------------code.length：${code.length}');
    try {
      var httpClient = new HttpClient();
      var request = await httpClient.postUrl(Uri.parse(url));
      request.headers
          .set('Content-Length', code.length, preserveHeaderCase: true);
      request.add(utf8.encode(code));
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        print('ok------------------');
        flag = await response.transform(utf8.decoder).join();
        // success  成功
        if (flag == 'success') {
          print(flag);
          return 1;
        } else {
          // 其他失败，1，代码错误等，一般不会发生；2，代码太长，内存不足，有可能发生
          return 0;
        }
      } else {
        print('no------------------');
        // 失败
        print(response.statusCode);
        return -1;
      }
    } catch (err) {
      // 失败 请求错误，比如：机器人未开启，ip地址错误
      if (flag != 'success') {
        print('err------------$err');
        return -1;
      } else {
        print('noterr------------$flag');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('请求'),
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
