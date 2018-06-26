import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Framework tour",
      home: new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.menu,color: Colors.white,),
              onPressed: null
          ),
          title: new Text(
            'Framework tour',
            style: new TextStyle(
                color: Colors.white
            ),
          ),
          backgroundColor: Colors.red,
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
          child: new MyButton(),
        ),
      ),
    );
  }
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar( 
            new Text('Silhoutte',style: Theme.of(context).primaryTextTheme.title,)
          ),
          new Expanded(child: new Center(
            child: new Text('Pervy Sage'),
          ))
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget{
  
  MyAppBar(this.title);
  
  final Widget title;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: null,tooltip: "Nav Menu",),
          new Expanded(child: title),
          new IconButton(icon: new Icon(Icons.search), onPressed: null,tooltip: "Search",)
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap:(){
        print('Ouuuuch , ahhh ');
      },
      child: new Container(
        padding:const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 36.0,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(6.0),
          color: Colors.red
        ),
        child: new Center(
          child: new Text('Engage',style: new TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

}