import 'package:flutter/material.dart';

class ButtonHome extends StatelessWidget {

  final String texto;
  final Function funcao;

  const ButtonHome({Key key, this.texto, this.funcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: funcao,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
