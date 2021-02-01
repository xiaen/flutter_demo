import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePage extends StatefulWidget {
  DateTimePage({Key key}) : super(key: key);

  @override
  _DateTimePageState createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  var now = DateTime.now();
  var nowTime = TimeOfDay(hour: 12, minute: 00);
  _showDatePicker() async {
    var res = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(1900),
        lastDate: DateTime(2200));
    setState(() {
      this.now = res;
    });
  }

  _showTimePicker() async {
    var res = await showTimePicker(context: context, initialTime: this.nowTime);
    setState(() {
      this.nowTime = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期，时间'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formatDate(this.now, [yyyy, '-', mm, '-', dd])}"),
                Icon(Icons.arrow_downward),
              ],
            ),
            onTap: () {
              this._showDatePicker();
            },
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${this.nowTime.format(context)}'),
                Icon(Icons.arrow_downward)
              ],
            ),
            onTap: () {
              this._showTimePicker();
            },
          )
        ],
      ),
    );
  }
}
