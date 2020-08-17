import 'package:flutter/material.dart';

import 'details.dart';
import 'model/person.dart';

class GridViewDemo extends StatelessWidget {
  static const routeName = "/gridView-demo";

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('GridView Demo'),
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
}
