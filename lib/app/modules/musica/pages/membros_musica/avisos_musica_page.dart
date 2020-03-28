import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/widgets/aviso_musica_card.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class AvisosMusicaPage extends StatefulWidget {
  @override
  _AvisosMusicaPageState createState() => _AvisosMusicaPageState();
}

class _AvisosMusicaPageState extends State<AvisosMusicaPage> {
  bool web = kIsWeb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: t2,
              child: FutureBuilder<QuerySnapshot>(
                future: Firestore.instance
                    .collection("avisos_musica")
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
                        return AvisoMusicaCard(snapshot: doc);
                      }).toList(),
                    );
                  }
                },
              )),
        ));
  }
}
