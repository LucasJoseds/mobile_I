import 'package:app_idoso/views/remedy_list.dart';
import 'package:app_idoso/views/schedule_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final screens = [Home(), ScheduleList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: Color.fromARGB(255, 39, 73, 39),
      ),
      body: Center(
        child: Container(
          width: 600,
          height: 400,
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScheduleList(),
                      ),
                    );
                  },
                  splashColor: Color.fromARGB(255, 59, 209, 96),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        size: 70.0,
                      ),
                      Text("Agenda")
                    ],
                  )),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RemedyList(),
                      ),
                    );
                  },
                  splashColor: Color.fromARGB(255, 59, 209, 96),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.health_and_safety_rounded,
                        size: 70.0,
                      ),
                      Text("Remédio")
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
