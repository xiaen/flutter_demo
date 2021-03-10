import 'package:flutter/material.dart';

class MyDialogPage extends StatelessWidget {
  @required
  Widget child;
  @required
  bool isShow;
  String text;
  List<Widget> children = [];

  MyDialogPage({Key key, this.child, this.isShow, this.text})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    children.add(child);
    if (isShow) {
      children.add(Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black54,
        child: Center(
          child: Container(
            width: 120.0,
            height: 120.0,
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new CircularProgressIndicator(),
                new Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: new Text(
                    text,
                    style: new TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return Stack(
      children: children,
    );
  }
}
