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
  late String _foto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Novo Remédio"),
        backgroundColor: Color.fromARGB(255, 39, 73, 39),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 0.5),
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
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(135, 117, 117, 117),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: 100,
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
                  child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 39, 73, 39)),
                      ),
                      onPressed: () {
                        print("Cadastrou");
                      },
                      child: Text(
                        "Adicionar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
