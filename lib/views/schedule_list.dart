import 'package:app_idoso/data/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    final schedules = {...DUUMY_SCHEDULE};

    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
        backgroundColor: Color.fromARGB(255, 39, 73, 39),
      ),
      body: ListView.builder(
          itemCount: schedules.length,
          itemBuilder: (context, i) =>
              Text(schedules.values.elementAt(i).descricao)),
    );
  }
}
