import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Counter Demo',
      home:new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.menu),color: Colors.white,
              onPressed: null
          ),
          title: new Text(
            'Counter Demo',
            style: new TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null
            )
          ],
        ),
        body: new Center(
          child: new Counter(),
        ),
      ) ,
    );
  }
}

class CounterDisplay extends StatelessWidget{
  CounterDisplay(this._count);
  final int _count;
  @override
  Widget build(BuildContext context) {
    return new Text('Count : $_count');
  }
}

class CounterIncrementer extends StatelessWidget{
  
  CounterIncrementer({this.onPressed});
  
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
        onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{

  int _count=0;

  void _increment(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrementer(onPressed: _increment,),
        new CounterDisplay(_count),
      ],
    );
  }

}