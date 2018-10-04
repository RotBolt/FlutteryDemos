import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForBG/for_background_img.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/for_accent_color.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/for_primary_color.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/for_primary_color_dark.dart';

class DisplayOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          Divider(),

          PrimaryColorOptions(),

          Divider(),
          Divider(),

          AccentColorOptions(),
          Divider(),

          BackgroundImg(),
        ],
      ),
    );
  }
}
