import 'package:flutter/material.dart';
import 'package:grid_view/details.dart';
import 'package:grid_view/grid_view.dart';

import 'details.dart';
import 'list_view.dart';
import 'list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        Details.routeName: (context) => Details(),
        ListViewDemo.routeName: (context) => ListViewDemo(),
        GridViewDemo.routeName: (context) => GridViewDemo(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home Page'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Show List View',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListViewDemo()));
              },
            ),
            SizedBox(height: 10),
            RaisedButton(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Show Grid View',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewDemo(),
                  ),
                ),
              },
            )
          ],
        ),
      ),
    );
  }

  // _displaySnackbar(BuildContext context, String id) {
  //   final snackBar = SnackBar(content: Text(id));
  //   _scaffoldKey.currentState.showSnackBar(snackBar);
  // }
}
