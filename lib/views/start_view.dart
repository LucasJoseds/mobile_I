import 'package:app_idoso/views/remedy_list.dart';
import 'package:app_idoso/views/schedule_list.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  int currentIndex = 0;

  final screens = [Home(), ScheduleList(), RemedyList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
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
