import 'package:flutter/material.dart';

class IconsHome extends StatelessWidget {

  final String icone;
  final Function funcao;

  const IconsHome({Key key, this.icone, this.funcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image.network(icone, color: Colors.white,),
        iconSize: 20,
        onPressed: funcao);
  }
}
