import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/repositories/escala_musica_repository.dart';

import '../../../../shared/constants/constants.dart';
import '../../models/escala_musica_domingo_model.dart';

class EscalaMusicaPage extends StatefulWidget {
  final EscalaMusicaRepository repository;

  const EscalaMusicaPage({Key key, this.repository}) : super(key: key);

  @override
  _EscalaMusicaPageState createState() => _EscalaMusicaPageState();
}

class _EscalaMusicaPageState extends State<EscalaMusicaPage> {
  static const TextStyle mes =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
  static const TextStyle diaSemana = TextStyle(color: Colors.white);
  static const TextStyle data = TextStyle(color: Colors.white);
  static const TextStyle padrao = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    // widget.repository.teste();
    return SingleChildScrollView(
      child: Container(
        color: t2,
        child: Column(
          children: <Widget>[
            _buildEscalaDomingoCorrente(),
          ],
        ),
      ),
    );
  }

  FutureBuilder<EscalaMusicaDomingoModel> _buildEscalaDomingoCorrente() {
    return FutureBuilder<EscalaMusicaDomingoModel>(
      future: widget.repository.obterEscalaDomingoMesCorrente(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(snapshot.data.mes,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'CinzelDecorative')),
                SizedBox(height: 6),
                Text("Domingos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                _buildListaMissa1(snapshot),
                _buildListaMissa2(snapshot),
                _buildListaMissa3(snapshot),
                _buildListaMissa4(snapshot),
                snapshot.data.quantidadeDomingos > 4 ? _buildListaMissa5(snapshot) : Container(),
              ],
            ),
          );
        }
      },
    );
  }

  ListView _buildListaMissa1(AsyncSnapshot<EscalaMusicaDomingoModel> snapshot) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      shrinkWrap: true,
      children: <Widget>[
        _buildListTileData(snapshot.data.dataMissa1),
        _buildListTileItems2(snapshot.data.horarioH1M1, snapshot.data.grupoH1M1),
        _buildListTileItems2(snapshot.data.horarioH2M1, snapshot.data.grupoH2M1),
        _buildListTileItems2(snapshot.data.horarioH3M1, snapshot.data.grupoH3M1),
      ],
    );
  }

  ListView _buildListaMissa2(AsyncSnapshot<EscalaMusicaDomingoModel> snapshot) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      shrinkWrap: true,
      children: <Widget>[
        _buildListTileData(snapshot.data.dataMissa2),
        _buildListTileItems2(snapshot.data.horarioH1M2, snapshot.data.grupoH1M2),
        _buildListTileItems2(snapshot.data.horarioH2M2, snapshot.data.grupoH2M2),
        _buildListTileItems2(snapshot.data.horarioH3M2, snapshot.data.grupoH3M2),
      ],
    );
  }

  ListView _buildListaMissa3(AsyncSnapshot<EscalaMusicaDomingoModel> snapshot) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      shrinkWrap: true,
      children: <Widget>[
        _buildListTileData(snapshot.data.dataMissa3),
        _buildListTileItems2(snapshot.data.horarioH1M3, snapshot.data.grupoH1M3),
        _buildListTileItems2(snapshot.data.horarioH2M3, snapshot.data.grupoH2M3),
        _buildListTileItems2(snapshot.data.horarioH3M3, snapshot.data.grupoH3M3),
      ],
    );
  }

  ListView _buildListaMissa4(AsyncSnapshot<EscalaMusicaDomingoModel> snapshot) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      shrinkWrap: true,
      children: <Widget>[
        _buildListTileData(snapshot.data.dataMissa4),
        _buildListTileItems2(snapshot.data.horarioH1M4, snapshot.data.grupoH1M4),
        _buildListTileItems2(snapshot.data.horarioH2M4, snapshot.data.grupoH2M4),
        _buildListTileItems2(snapshot.data.horarioH3M4, snapshot.data.grupoH3M4),
      ],
    );
  }

  ListView _buildListaMissa5(AsyncSnapshot<EscalaMusicaDomingoModel> snapshot) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      addAutomaticKeepAlives: true,
      shrinkWrap: true,
      children: <Widget>[
        _buildListTileData(snapshot.data.dataMissa5),
        _buildListTileItems2(snapshot.data.horarioH1M5, snapshot.data.grupoH1M5),
        _buildListTileItems2(snapshot.data.horarioH2M5, snapshot.data.grupoH2M5),
        _buildListTileItems2(snapshot.data.horarioH3M5, snapshot.data.grupoH3M5),
      ],
    );
  }

  _buildListTileData(String data) {
    return Container(
      padding: EdgeInsets.only(bottom: 12, top: 12),
      child: ListTile(
        dense: true,
        leading: Icon(
          Icons.date_range,
          color: Colors.white,
          size: 30,
        ),
        title: Text(data,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )),
      ),
    );
  }

  _buildListTileItems2(String horario, String grupo) {
    return Container(
      padding: EdgeInsets.only(left: 32, bottom: 8),
      child: Row(
        children: <Widget>[
          Container(
              child: Icon(
            Icons.access_time,
            color: Colors.white,
            size: 20,
          )),
          SizedBox(width: 16),
          Container(
            child: Text(horario,
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          SizedBox(width: 8),
          Container(
            child: Text("-", style: padrao),
          ),
          SizedBox(width: 8),
          Container(
            child: Text(grupo,
                style: TextStyle(color: Colors.white, fontSize: 16)),
          )
        ],
      ),
    );
  }

}
