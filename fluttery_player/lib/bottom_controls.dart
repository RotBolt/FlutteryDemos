import 'package:flutter/material.dart';
import 'theme.dart';

class BottomControls extends StatelessWidget {
  const BottomControls({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      color: accentColor,
      child: new Material(
        shadowColor: const Color(0x44000000),

        color: accentColor,

        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: new Column(
            children: <Widget>[

              new TitleSection(),

              Padding(

                padding: const EdgeInsets.only(top: 40.0,bottom: 20.0),
                child: new Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[

                    new PreviousButton(),

                    new PlayPauseButton(),

                    new NextButton()

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new RichText(
      text: new TextSpan(text: '', children: [
        new TextSpan(
            text: 'Song title\n',
            style: new TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 4.0,
                height: 1.5,
                color: Colors.white)),
        new TextSpan(
            text: 'Artist Name',
            style: new TextStyle(
                color: Colors.white.withOpacity(0.75),
                letterSpacing: 3.0,
                height: 1.5))
      ]),
    );
  }
}

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
        shape: new CircleBorder(),
        fillColor: Colors.white,
        splashColor: lightAccentColor,
        highlightColor: lightAccentColor.withOpacity(0.5),
        elevation: 10.0,
        highlightElevation: 0.5,
        child: new Padding(
          padding: EdgeInsets.all(8.0),
          child: new Icon(Icons.play_arrow,
              color: darkAccentColor, size: 35.0),
        ),
        onPressed: () {
          //TODO
        });
  }
}

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      splashColor: lightAccentColor,
      highlightColor: Colors.transparent,
      icon: new Icon(
        Icons.skip_previous,
        color: Colors.white,
        size: 35.0,
      ),
      onPressed: () {
        //TODO
      },
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new IconButton(
      splashColor: lightAccentColor,
      highlightColor: Colors.transparent,
      icon: new Icon(
        Icons.skip_next,
        color: Colors.white,
        size: 35.0,
      ),
      onPressed: () {
        //TODO
      },
    );
  }
}