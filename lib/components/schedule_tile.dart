import 'package:app_idoso/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/schedule.dart';

class ScheduleTile extends StatelessWidget {
  final Schedule schedule;

  const ScheduleTile(this.schedule);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.book),
      title: Text(schedule.descricao),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
      subtitle: Text(schedule.descricao),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              color: Colors.blue,
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.red,
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
