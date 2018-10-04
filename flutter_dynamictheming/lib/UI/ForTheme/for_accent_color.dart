import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/options.dart';

class AccentColorOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                'Accent Color',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Options(Colors.lightGreenAccent, "ac"),

                  Options(Colors.orangeAccent[700], "ac"),

                  Options(Colors.blue, "ac"),

                  Options(Colors.purple[300], "ac"),

                  Options(Colors.green, "ac"),

                  Options(Colors.amber, "ac"),

                  Options(Colors.red[500], "ac"),

                  Options(Colors.pinkAccent, "ac")

                ],
              ),
            ),
          ]
      ),
    );
  }
}
