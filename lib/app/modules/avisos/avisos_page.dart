import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/avisos/widgets/aviso_card.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'avisos_controller.dart';

class AvisosPage extends StatefulWidget {
  final String title;
  const AvisosPage({Key key, this.title = "Avisos Paroquiais"})
      : super(key: key);

  @override
  _AvisosPageState createState() => _AvisosPageState();
}

class _AvisosPageState extends ModularState<AvisosPage, AvisosController> {
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
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(bg), fit: BoxFit.cover)),
              child: FutureBuilder<QuerySnapshot>(
                future: Firestore.instance
                    .collection("avisos")
                    .orderBy('data', descending: true)
                    .getDocuments(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                        child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white)));
                  } else {
                    return ListView(
                      addAutomaticKeepAlives: true,
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 100),
                      children: snapshot.data.documents.map((doc) {
                        return AvisoCard(snapshot: doc);
                      }).toList(),
                    );
                  }
                },
              )),
        ));
  }
}
