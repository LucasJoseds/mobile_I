import 'package:app_idoso/models/person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonList extends StatelessWidget {
  const PersonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testando "),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {},
                splashColor: Colors.red,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.schedule,
                      size: 70.0,
                    ),
                    Text("Agenda")
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
