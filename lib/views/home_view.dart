import 'package:app_idoso/views/schedule_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home"),
          backgroundColor: Color.fromARGB(255, 39, 73, 39),
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  margin: EdgeInsets.all(20.0),
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
                  margin: EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {},
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.green,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Agenda"),
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety), label: "Remédio"),
          ],
        ));
  }
}
