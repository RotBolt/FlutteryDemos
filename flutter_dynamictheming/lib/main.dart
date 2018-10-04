import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/Blocs/blocs_class.dart';
import 'package:flutter_dynamictheming/UI/DesignedTheme.dart';
import 'package:flutter_dynamictheming/UI/displayOptions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: Blocs.themeBloc.selectedTheme,
      initialData: ThemeData.light(),
      builder:(context, snapshot) => MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: snapshot.data,
          home: Home(),

        ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('UDesign'),
        ),
      ),
      body: StreamBuilder(
        stream: Blocs.bgBloc.selectedBg,
        initialData: 'assets/bgchoice4.jpg',
        builder:(context,snapshot) => Container(
          child: DisplayOption(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(snapshot.data),
              fit: BoxFit.fill,
            )
          ),
        ),
      ),

      floatingActionButton: Builder(
          builder: (BuildContext context) => FloatingActionButton(
            child: Text('Hello'),
            elevation: 20.0,
              highlightElevation: 40.0,
            onPressed: (){
              final snackBar = SnackBar(
                content: Text('That looks cool buddy ;)'),
              );


              Scaffold.of(context).showSnackBar(snackBar);
            }
        ),
      ),

    );
  }
}

