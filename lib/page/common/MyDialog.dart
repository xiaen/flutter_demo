import 'dart:async';
import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  String conText;

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      Navigator.pop(context);
      t.cancel();
    });
  }

  MyDialog({this.title, this.conText});
  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        width: 250,
        height: 250,
        padding: EdgeInsets.all(15),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(title),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ))
              ],
            ),
            Divider(),
            Container(
              alignment: Alignment.topLeft,
              child: Text(conText),
            )
          ],
        ),
      )),
    );
  }
}
