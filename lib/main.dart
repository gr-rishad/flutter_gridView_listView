import 'package:flutter/material.dart';
import 'package:grid_view/details.dart';
import 'package:grid_view/model/person.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        Details.routeName: (context) => Details(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Text('GridView Demo'),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(Person.personList.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Details.routeName,
                  arguments: Person.personList[index].id);
              // Scaffold.of(_scaffoldKey).showSnackBar(SnackBar(
              //   content: Text(personList.length.toString()),
              // ));
           //   _displaySnackbar(context, Person.personList[index].id);
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: Image.asset(Person.personList[index].image),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Text(
                        Person.personList[index].name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  _displaySnackbar(BuildContext context, String id) {
    final snackBar = SnackBar(content: Text(id));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
