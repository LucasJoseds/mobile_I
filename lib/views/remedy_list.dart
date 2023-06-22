import 'package:app_idoso/data/remedy.dart';
import 'package:app_idoso/views/remedy_add.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/remedy_tile.dart';

class RemedyList extends StatelessWidget {
  const RemedyList({super.key});

  @override
  Widget build(BuildContext context) {
    final remedys = {...DUUMY_REMEDY};

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Remédio"),
        backgroundColor: Color.fromARGB(255, 39, 73, 39),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RemedyAdd(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: remedys.length,
          itemBuilder: (context, i) => RemedyTile(remedys.values.elementAt(i))),
    );
  }
}
