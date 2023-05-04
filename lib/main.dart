import 'package:app_idoso/views/home_view.dart';
import 'package:app_idoso/views/person_list.dart';
import 'package:app_idoso/views/start_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppTeste());
}

class AppTeste extends StatelessWidget {
  const AppTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Testando",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Start(),
    );
  }
}
