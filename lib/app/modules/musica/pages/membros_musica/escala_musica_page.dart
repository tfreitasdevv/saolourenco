import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/repositories/escala_musica_repository.dart';

import '../../models/escala_musica_domingo_model.dart';

class EscalaMusicaPage extends StatefulWidget {
  final EscalaMusicaRepository repository;

  const EscalaMusicaPage({Key key, this.repository}) : super(key: key);

  @override
  _EscalaMusicaPageState createState() => _EscalaMusicaPageState();
}

class _EscalaMusicaPageState extends State<EscalaMusicaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<EscalaMusicaDomingoModel>(
        future: widget.repository.obterEscalaDomingoMesCorrente(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(snapshot.data.mes),
                  Text("Domingos"),
                  Text(snapshot.data.dataMissa1),
                  Row(children: <Widget>[
                    Text(snapshot.data.horarioH1M1),
                    Text(snapshot.data.grupoH1M1),
                  ]),
                  Row(children: <Widget>[
                    Text(snapshot.data.horarioH2M1),
                    Text(snapshot.data.grupoH2M1),
                  ]),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
