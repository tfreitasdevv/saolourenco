import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class AvisoCard extends StatelessWidget {
  final String titulo;
  final String data;
  final String descricao;

  const AvisoCard({Key key, this.titulo, this.data, this.descricao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(12),
      child: ExpandablePanel(
            header: Column(
              children: <Widget>[
                Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Align(
                  //alignment: Alignment.centerRight,
                  child: Text(
                    data,
                    style: TextStyle(color: t5),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            collapsed: Text(
              descricao,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            expanded: Text(descricao, softWrap: true),
          )
    ));
  }
}
