import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testando "),
        backgroundColor: Color.fromARGB(255, 119, 243, 119),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
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
                      Icons.schedule,
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
                      Icons.schedule,
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
                      Icons.schedule,
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
                splashColor: Color.fromARGB(255, 3, 14, 6),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
