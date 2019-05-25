import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My Application",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),

        body: new Center(
          child: new Text("Hello World", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ))
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),



        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[

              UserAccountsDrawerHeader(accountEmail: Text("srivinay.appari@gmail.com"),
              accountName: Text("Sri Vinay"),
              currentAccountPicture: CircleAvatar(
                child: Text("V"),
              ),
              ),

              ListTile(
                onTap: () {},
                leading: Image.network(
                  "https://avatars3.githubusercontent.com/u/30663011?s=460&v=4",
                  width: 50,
                  height: 30,
                  ),
                title: Text("Vinay"),
                subtitle: Text("CSE"),
                trailing: Icon(Icons.delete),
              )
            ],
          ),
        ),
      ),
    );
  }
}