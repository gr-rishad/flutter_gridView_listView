import 'package:flutter/material.dart';

import 'details.dart';
import 'model/person.dart';

class ListViewDemo extends StatelessWidget {
  static const routeName = "/listView-Demo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Demo '),
      ),
      body: new ListView.builder(
        itemCount: Person.personList.length,
        itemBuilder: (BuildContext ctx, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Details.routeName,
                  arguments: Person.personList[index].id);
            },
            child: _buildCard(ctx, index),
          );
        },
      ),
    );
  }

  Widget _buildCard(BuildContext ctx, int index) {
    return Card(
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              width: 100.0,
              height: 60.0,
              child: Image.asset(
                Person.personList[index].image,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Person.personList[index].name,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  child: Text(
                    Person.personList[index].position,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
