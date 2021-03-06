import 'package:flutter/material.dart';
import 'searching/binary.dart';
import 'searching/interpolation.dart';
import 'searching/jump.dart';
import 'searching/linear.dart';
import 'sorting/bubble.dart';
import 'sorting/insertion.dart';
import 'sorting/merge.dart';
import 'sorting/selection.dart';
import 'sorting/shell.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'List_view',
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          //Sorting
          "/BubbleSort": (BuildContext context) => BubbleSort("Bubble Sort"),
          "/MergeSort": (BuildContext context) => MergeSort("Merge Sort"),
          "/InsertionSort": (BuildContext context) => InsertionSort("Insertion Sort"),
          "/ShellSort": (BuildContext context) => ShellSort("Shell Sort"),
          "/SelectionSort": (BuildContext context) => SelectionSort("Selection Sort"),
          //Searching
          "/LinearSearch": (BuildContext context) => LinearSearch("Linear Search"),
          "/BinarySearch": (BuildContext context) => BinarySearch("Binary Search"),
          "/JumpSearch": (BuildContext context) => JumpSearch("Jump Search"),
          "/InterpolationSearch": (BuildContext context) => InterpolationSearch("Interpolation Search"),
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
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/MergeSort"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Merge Sort"),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/InsertionSort"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Insertion Sort"),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/ShellSort"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Shell Sort"),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/SelectionSort"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Selection Sort"),
          ),
          Divider(),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/LinearSearch"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Linear Search"),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/BinarySearch"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Binary Search"),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/JumpSearch"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Jump Search"),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed("/InterpolationSearch"),
            leading: Image.network(
              "http://www.pure-informatique.com/wp-content/uploads/2017/05/open-book.png",
              width: 30,
              height: 30,
            ),
            title: Text("Interpolation Search"),
          ),
        ],
      ),
    );
  }
}
