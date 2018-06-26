import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LakeView(),
    );
  }
}

class LakeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  'Allahbad Sangam',
                  style: new TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                new Text(
                  'Uttar Pradesh',
                  style: new TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text('41')
        ],
      ),
    );

    Column buildButtons(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Text(
            label,
            style: new TextStyle(color: color),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtons(Icons.call, 'Call'),
          buildButtons(Icons.near_me, 'Route'),
          buildButtons(Icons.share, 'Share'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Top Lakes'),
      ),
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/lake.jpg',
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection
        ],
      )
    );
  }
}
