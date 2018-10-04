import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForBG/bg_choices.dart';

class BackgroundImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Container(
          color: Colors.black38,
          height: 60.0,
          width: double.infinity,
          margin: EdgeInsets.all( 20.0),
          child: Center(
            child: Text(
              'Choose Background',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BgChoices('assets/bgchoice4.jpg'),
              BgChoices('assets/bgchoice2.jpg'),
              BgChoices('assets/bgchoice3.jpg'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BgChoices('assets/bgchoice1.jpg'),
              BgChoices('assets/bgchoice5.jpg'),
              BgChoices('assets/bgchoice6.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
