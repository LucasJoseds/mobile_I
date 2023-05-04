import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RemedyAdd extends StatefulWidget {
  const RemedyAdd({super.key});

  @override
  State<RemedyAdd> createState() => _RemedyAddState();
}

class _RemedyAddState extends State<RemedyAdd> {
  final _formKey = GlobalKey<FormState>();

  late String _descricao;
  late String _data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Novo Remédio"),
        backgroundColor: Color.fromARGB(255, 39, 73, 39),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Descrição',
                    prefixIcon: Icon(Icons.description_outlined)),
                validator: (value) {
                  if (value == "") {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                onSaved: (value) => _descricao = value!,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Data', prefixIcon: Icon(Icons.date_range)),
                validator: (value) {
                  if (value == "") {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                onSaved: (value) => _data = value!,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 39, 73, 39)),
                  ),
                  onPressed: () {
                    print("Cadastrou");
                  },
                  child: Text("Adicionar"))
            ],
          ),
        ),
      ),
    );
  }
}
