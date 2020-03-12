import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
          backgroundColor: Colors.black,
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
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                children: <Widget>[
                  Card(
                      child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      children: <Widget>[
                        Text("Lançamento do novo Aplicativo"),
                        Text(
                            "Lorem Ipsum is simply dummy" 
                            "text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                      ],
                    ),
                  )),
                ],
              )),
        ));
  }
}
