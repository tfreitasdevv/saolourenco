import 'package:flutter/material.dart';

class AcessoMembrosButton extends StatelessWidget {
  final Function funcao;

  const AcessoMembrosButton({Key key, this.funcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: funcao,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Text(
        "Acesso a membros",
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width > 400 ? 18 : 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
