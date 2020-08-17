import 'package:flutter/material.dart';
import 'package:grid_view/model/person.dart';

class Details extends StatelessWidget {
  static const routeName = '/details';
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  // List<Person> persons = [
  //   Person("0", "Rabbani", "Software Engineer"),
  //   Person("1", "Golam Rabbani", "Jr. Software Engineer"),
  //   Person("2", "Rishad", "Apps Developer"),
  // ];

  @override
  Widget build(BuildContext context) {
    var routeArg = ModalRoute.of(context).settings.arguments as String;

    String name = Person.personList[int.parse(routeArg)].name;
    String imgPath = Person.personList[int.parse(routeArg)].image;
    String designation = Person.personList[int.parse(routeArg)].position;

    print(imgPath);
    return Scaffold(
      appBar: AppBar(
        title: Text('Emp Details'),
      ),
      body: Container(
        //child: _displaySnackbar(context, imgPath),

        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 350,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(imgPath),
                //   ),
                // ),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                designation,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              )
            ],
          ),
        ),
      ),
    );
  }

  _displaySnackbar(BuildContext context, String id) {
    final snackBar = SnackBar(content: Text(id));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
