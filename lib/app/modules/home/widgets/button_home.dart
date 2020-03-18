import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class ButtonHome extends StatelessWidget {

  final String texto;
  final Function funcao;

  const ButtonHome({Key key, this.texto, this.funcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;

    return RaisedButton(
      onPressed: funcao,
      color: t2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: largura < 400 ? 16 : 20, 
          color: Colors.white),
      ),
    );
  }
}
