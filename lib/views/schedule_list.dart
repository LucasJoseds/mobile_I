import 'package:app_idoso/components/schedule_tile.dart';
import 'package:app_idoso/data/schedule.dart';
import 'package:app_idoso/views/schedule_add.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    const schedules = {...DUUMY_SCHEDULE};

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Agenda"),
        backgroundColor: Color.fromARGB(255, 39, 73, 39),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduleAdd(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: schedules.length,
          itemBuilder: (context, i) =>
              ScheduleTile(schedules.values.elementAt(i))),
    );
  }
}
