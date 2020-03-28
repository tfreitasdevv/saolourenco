import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/horarios/widgets/horario_tile.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'horarios_controller.dart';
import 'widgets/horario_tile.dart';

class HorariosPage extends StatefulWidget {
  final String title;
  const HorariosPage({Key key, this.title = "Horários das Missas"})
      : super(key: key);

  @override
  _HorariosPageState createState() => _HorariosPageState();
}

class _HorariosPageState
    extends ModularState<HorariosPage, HorariosController> {
  //use 'controller' variable to access controller

  bool web = kIsWeb;

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
          image: DecorationImage(
              image: web == false
                  ? CachedNetworkImageProvider(
                      MediaQuery.of(context).size.height > 400 ? bg4k : bg2k)
                  : NetworkImage(
                      MediaQuery.of(context).size.height > 400 ? bg4k : bg2k),
              fit: BoxFit.cover)),
      child: _buildScrollView(context),
    );
  }

  SingleChildScrollView _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: FutureBuilder<QuerySnapshot>(
      future: Firestore.instance
          .collection('horarios_missas')
          .orderBy('ordem')
          .getDocuments(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ));
        } else {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: snapshot.data.documents.map((doc) {
                List missas = doc.data["missas"];
                return Column(
                  children: <Widget>[
                    Text(
                      doc["titulo"],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              MediaQuery.of(context).size.width < 400 ? 18 : 22,
                          fontFamily: 'CinzelDecorative'),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      addAutomaticKeepAlives: true,
                      shrinkWrap: true,
                      itemCount: missas.length,
                      itemBuilder: (context, index) {
                        return HorarioTile(horario: missas[index]);
                      },
                    ),
                    SizedBox(height: 30)
                  ],
                );
              }).toList(),
            ),
          );
        }
      },
    ));
  }
}
