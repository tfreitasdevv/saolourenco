import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/local_user.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'package:paroquia_sao_lourenco/app/shared/widgets/acesso_membros_button.dart';

class MusicaPage extends StatefulWidget {
  final String title;
  const MusicaPage({Key key, this.title = "Pastoral da Música"})
      : super(key: key);

  @override
  _MusicaPageState createState() => _MusicaPageState();
}

class _MusicaPageState extends State<MusicaPage> {
  bool web = kIsWeb;
  final localUser = Modular.get<LocalUser>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: t2,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(28),
            child: Column(
              children: <Widget>[
                _textoApresentacao(context),
                SizedBox(height: 22),
                _contato(context),
                SizedBox(height: 22),
                AcessoMembrosButton(funcao: () {
                  if (localUser.firebaseUser == null) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return WillPopScope(
                            onWillPop: () async => false,
                            child: AlertDialog(
                              scrollable: true,
                              titleTextStyle: TextStyle(
                                  color: t1,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width > 400
                                          ? 20
                                          : 18),
                              elevation: 8,
                              contentTextStyle: TextStyle(
                                  color: t1,
                                  fontSize:
                                      MediaQuery.of(context).size.width > 400
                                          ? 16
                                          : 14),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Modular.to.pushReplacementNamed('/login');
                                      // Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                          color: t1,
                                          fontWeight: FontWeight.bold),
                                    )),
                                FlatButton(
                                    onPressed: () {
                                      Modular.to
                                          .pushReplacementNamed('/signup');
                                    },
                                    child: Text(
                                      "CRIAR USUÁRIO",
                                      style: TextStyle(
                                          color: t1,
                                          fontWeight: FontWeight.bold),
                                    )),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "VOLTAR",
                                      style: TextStyle(
                                          color: t1,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                              title: Text(
                                  "ACESSO RESTRITO A MEMBROS CADASTRADOS",
                                  textAlign: TextAlign.center),
                              content: Text(
                                  "Esta área é de acesso restrito a membros cadastrados no aplicativo.\n\nCaso você já possua cadastro, basta fazer o Login.\n\nCaso você ainda não possua, basta criar o seu cadastro."),
                            ),
                          );
                        });
                  } else {
                    Modular.to.pushNamed('/musica/membros_musica');
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _contato(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Coordenação",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width > 400 ? 22 : 20,
                color: Colors.white),
          ),
          Text(
            "André Pestana e Márcia Pestana",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 400 ? 18 : 16,
                color: Colors.white),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Contato",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width > 400 ? 22 : 20,
                color: Colors.white),
          ),
          Text(
            "(21) 91234-5678",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 400 ? 18 : 16,
                color: Colors.white),
          )
        ],
      ),
    );
  }

  Container _textoApresentacao(BuildContext context) {
    return Container(
      child: Text(
        "A Pastoral da Música é o grupo responsável por animar a vida litúrgica da igreja.\n\nA música é uma linguagem privilegiada que exprime e manifesta a alma e a cultura de um povo; para a liturgia ser autêntica e a participação ser profunda, deve-se usar a linguagem musical que melhor expresse a fé e a oração do povo orante.",
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width > 400 ? 18 : 16,
            color: Colors.white),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
