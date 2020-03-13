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
                      image: AssetImage(
                          MediaQuery.of(context).size.height > 1920
                              ? bg4k
                              : bg2k),
                      fit: BoxFit.cover)),
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 100),
                children: <Widget>[
                  AvisoCard(
                      titulo: "Título 1",
                      data: "Publicado em 13/03/2020",
                      descricao:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                  AvisoCard(
                      titulo: "Título 2",
                      data: "Publicado em 13/03/2020",
                      descricao:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                  AvisoCard(
                      titulo: "Título 3",
                      data: "Publicado em 13/03/2020",
                      descricao:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                  AvisoCard(
                      titulo: "Título 4",
                      data: "Publicado em 13/03/2020",
                      descricao:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                  AvisoCard(
                      titulo: "Título 5",
                      data: "Publicado em 13/03/2020",
                      descricao:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                  AvisoCard(
                      titulo: "Título 6",
                      data: "Publicado em 13/03/2020",
                      descricao:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                ],
              )),
        ));
  }
}
