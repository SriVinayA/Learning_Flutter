import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Application",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        //brightness: Brightness.light,
        brightness: Brightness.dark,
        accentColor: Colors.redAccent,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";

  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome to my application";
      } else {
        mytext = "Hello World";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text(mytext, style: new TextStyle(
              fontSize: 22.0
            ),),

            new RaisedButton(
              child: new Text("Click", style: new TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),),
              onPressed: _changeText,
              color: Colors.blue,
              
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Home Page"),
        ),
        body: _bodyWidget());
  }
}
