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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(30.0),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 103, 153, 103),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Agenda",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        "Anotações:",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 19),
                      ),
                      Text("")
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 103, 153, 103),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Remédio",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        "Tomados:",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 19),
                      ),
                      Text("")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "A tomar:",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 19),
                      ),
                      Text(""),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
