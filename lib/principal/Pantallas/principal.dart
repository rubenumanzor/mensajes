import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alertas"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Mostrar Alerta"),
                  onPressed: () {
                    // print("Presiono el boton");
                    _mostrarAlerta(context);
                  }),
              SizedBox(
                height: 20,
              ),
              Text("Informativo"),
            ],
          ),
        ));
  }
}

Future<void> _mostrarAlerta(BuildContext context) async {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => _buildAlertDialog(context));
}

Widget _buildAlertDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Advertencia! Nueva"),
    content: Text("Su dispositivo ha sido infectado por un backdoor"),
    actions: <Widget>[
      FlatButton(
        child: Text("Aceptar"),
        textColor: Color.fromARGB(255, 4, 43, 112),
        onPressed: () {
          Navigator.of(context).pop();
          print("Presiono aceptar");
        },
      ),
      FlatButton(
        child: Text("Cancelar"),
        textColor: Color.fromARGB(255, 240, 22, 22),
        onPressed: () {
          Navigator.of(context).pop();
          print("Presiono cancelar");
        },
      ),
      TextButton(
        onPressed: () {
          print("OK");
          Navigator.of(context).pop();
        },
        child: Text("No Ok"),
      ),
    ],
  );
}
