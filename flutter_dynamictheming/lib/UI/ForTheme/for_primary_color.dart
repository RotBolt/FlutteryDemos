import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/options.dart';

class PrimaryColorOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all( 20.0),
              child: Text(
                'Primary Color',
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
                   Options(Colors.green, "pc"),

                   Options(Colors.purpleAccent, "pc"),

                   Options(Colors.green[900], "pc"),

                   Options(Colors.amberAccent[700], "pc"),

                   Options(Colors.redAccent[700], "pc"),

                   Options(Colors.deepPurpleAccent[700], "pc"),

                   Options(Colors.blue[500], "pc"),

                   Options(Colors.pinkAccent[700], "pc")
                  ],
                ),
            ),
          ]
      ),
    );
  }
}
