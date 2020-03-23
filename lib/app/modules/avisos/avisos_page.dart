import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
                      image: CachedNetworkImageProvider(
                          MediaQuery.of(context).size.height > 1920
                              ? bg4k
                              : bg2k),
                      fit: BoxFit.cover)),
              child: FutureBuilder<QuerySnapshot>(
                future: Firestore.instance.collection("avisos").orderBy('data', descending: true).getDocuments(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView(
                      addAutomaticKeepAlives: true,
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 100),
                      children: snapshot.data.documents.map(
                        (doc){
                          return AvisoCard(snapshot: doc);}
                      ).toList(),
                    );
                  }
                },
              )),
        ));
  }
}
