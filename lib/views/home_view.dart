import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            padding: EdgeInsets.all(50.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {},
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
                      borderRadius: BorderRadius.circular(20.0)),
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
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Agenda"),
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety), label: "Remédio"),
          ],
        ));
  }
}
