import 'package:flutter/material.dart';

import 'sorting/bubble.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'List_view',
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          "/BubbleSort": (BuildContext context) => BubbleSort("Bubble Sort"),
        });
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ListView listView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Structures"),
      ),
      body: listView = ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/BubbleSort"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Bubble Sort"),
          ),
        ],
      ),
    );
  }
}
