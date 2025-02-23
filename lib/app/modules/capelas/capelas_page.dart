import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/constants/constants.dart';

class CapelasPage extends StatefulWidget {
  final String title;
  const CapelasPage({Key key, this.title = "Capelas"}) : super(key: key);

  @override
  _CapelasPageState createState() => _CapelasPageState();
}

class _CapelasPageState extends State<CapelasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: t2,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  Container _buildBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        children: [
          _buildCard(
              context: context,
              imagem: saoLourencoDosIndios,
              nome: "Capela São Lourenço dos Índios",
              endereco: "Praça General Rondon - São Lourenço",
              missas: "1º e 3º Domingo do mês - 8h",
              urlFuncao: "https://goo.gl/maps/VtHA78BKXZSkt8Fx7"),
          _buildCard(
              context: context,
              imagem: meninoJesusDePraga,
              nome: "Capela Menino Jesus de Praga",
              endereco:
                  "R. Benjamin Constant, 397 - Condomínio Mululo da Veiga - Largo do Barradas",
              missas: "Domingo - 10h",
              urlFuncao: "https://goo.gl/maps/XQX7wZaPrjQU5ts5A"),
          _buildCard(
              context: context,
              imagem: nSraDaConceicao,
              nome: "Capela N. Sra. da Conceição",
              endereco:
                  "Rua F, Quadra 6 - Lote 13, - Morro Boa Vista - Fonseca",
              missas: "2º e 4º Domingo do mês - 8h",
              urlFuncao: "https://goo.gl/maps/yCR29LzE5ZD7YUNs6"),
          _buildCard(
              context: context,
              imagem: nSraGuadalupe,
              nome: "Capela N. Sra. de Guadalupe",
              endereco: "Tv. Orleans, 90 - Morro do Juca Branco - Fonseca",
              missas: "Sábado - 16h",
              urlFuncao: "https://goo.gl/maps/K4givrRJzDSUzA4r5")
        ],
      ),
    );
  }

  Card _buildCard(
      {@required BuildContext context,
      @required String imagem,
      @required String nome,
      @required String endereco,
      @required String missas,
      @required String urlFuncao}) {
    return Card(
      elevation: 8,
      child: Column(
        children: [
          Image.network(imagem),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                nome,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width > 400 ? 22 : 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                endereco,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 400 ? 18 : 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Missas:",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width > 400 ? 18 : 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                missas,
                style: TextStyle(
                    fontSize:
                        MediaQuery.of(context).size.width > 400 ? 18 : 16),
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () {
                    _mapa(urlFuncao);
                  },
                  child: Text(
                    "VER NO MAPA",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            MediaQuery.of(context).size.width > 400 ? 16 : 14),
                  )),
            ],
          )
        ],
      ),
    );
  }

  void _mapa(String url) {
    launch(url);
  }
}
