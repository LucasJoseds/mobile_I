import 'package:app_idoso/models/remedy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../views/home_view.dart';

class RemedyTile extends StatelessWidget {
  final Remedy remedy;

  RemedyTile(this.remedy);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.book),
      title: Text(remedy.descricao),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
      subtitle: Text(remedy.data as String),
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
