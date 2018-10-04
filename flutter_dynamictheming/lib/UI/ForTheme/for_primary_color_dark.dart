import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/options.dart';

class PrimaryColorDarkOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(

            margin: EdgeInsets.only(top: 20.0, left: 20.0),
            child: Text(
              'Primary Color Dark',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Options(Colors.green[900], "pcd"),

              Options(Colors.amberAccent[700], "pcd"),

              Options(Colors.redAccent[700], "pcd"),

              Options(Colors.deepPurpleAccent[700], "pcd"),

              Options(Colors.pinkAccent[700], "pcd")
            ],
          ),
        ]
    );
  }
}
