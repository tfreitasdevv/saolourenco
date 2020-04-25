import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class MaeTresVezesPage extends StatefulWidget {
  final String title;
  const MaeTresVezesPage({Key key, this.title = "Mãe Três Vezes Admirável Schoenstatt"})
      : super(key: key);

  @override
  _MaeTresVezesPageState createState() => _MaeTresVezesPageState();
}

class _MaeTresVezesPageState extends State<MaeTresVezesPage> {
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
          child: FutureBuilder<DocumentSnapshot>(
              future: Firestore.instance
                  .collection('conteudo_pagina_pastoral')
                  .document('mae_tres_vezes_admiravel')
                  .get(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                String contato = snapshot.data["contato"];
                String contatoF = contato.replaceAll("\\n", "\n");
                String texto = snapshot.data["texto"];
                String textoF = texto.replaceAll("\\n", "\n");
                return Container(
                  padding: EdgeInsets.all(28),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          textoF,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 400
                                  ? 18
                                  : 16,
                              color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(height: 22),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Coordenação",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width > 400
                                          ? 22
                                          : 20,
                                  color: Colors.white),
                            ),
                            Text(
                              snapshot.data["coordenacao"],
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width > 400
                                          ? 18
                                          : 16,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Contato",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width > 400
                                          ? 22
                                          : 20,
                                  color: Colors.white),
                            ),
                            Text(
                              contatoF,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width > 400
                                          ? 18
                                          : 16,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 22),
                      // AcessoMembrosButton(funcao: () {
                      //   var localUser;
                      //   if (localUser.firebaseUser == null) {
                      //     showDialog(
                      //         barrierDismissible: false,
                      //         context: context,
                      //         builder: (context) {
                      //           return WillPopScope(
                      //             onWillPop: () async => false,
                      //             child: AlertDialog(
                      //               scrollable: true,
                      //               titleTextStyle: TextStyle(
                      //                   color: t1,
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize:
                      //                       MediaQuery.of(context).size.width >
                      //                               400
                      //                           ? 20
                      //                           : 18),
                      //               elevation: 8,
                      //               contentTextStyle: TextStyle(
                      //                   color: t1,
                      //                   fontSize:
                      //                       MediaQuery.of(context).size.width >
                      //                               400
                      //                           ? 16
                      //                           : 14),
                      //               actions: <Widget>[
                      //                 FlatButton(
                      //                     onPressed: () {
                      //                       Modular.to
                      //                           .pushReplacementNamed('/login');
                      //                       // Navigator.of(context).pop();
                      //                     },
                      //                     child: Text(
                      //                       "LOGIN",
                      //                       style: TextStyle(
                      //                           color: t1,
                      //                           fontWeight: FontWeight.bold),
                      //                     )),
                      //                 FlatButton(
                      //                     onPressed: () {
                      //                       Modular.to.pushReplacementNamed(
                      //                           '/signup');
                      //                     },
                      //                     child: Text(
                      //                       "CRIAR USUÁRIO",
                      //                       style: TextStyle(
                      //                           color: t1,
                      //                           fontWeight: FontWeight.bold),
                      //                     )),
                      //                 FlatButton(
                      //                     onPressed: () {
                      //                       Navigator.of(context).pop();
                      //                     },
                      //                     child: Text(
                      //                       "VOLTAR",
                      //                       style: TextStyle(
                      //                           color: t1,
                      //                           fontWeight: FontWeight.bold),
                      //                     )),
                      //               ],
                      //               title: Text(
                      //                   "ACESSO RESTRITO A MEMBROS CADASTRADOS",
                      //                   textAlign: TextAlign.center),
                      //               content: Text(
                      //                   "Esta área é de acesso restrito a membros cadastrados no aplicativo.\n\nCaso você já possua cadastro, basta fazer o Login.\n\nCaso você ainda não possua, basta criar o seu cadastro."),
                      //             ),
                      //           );
                      //         });
                      //   } else {
                      //     Modular.to.pushNamed('/musica/membros_musica');
                      //   }
                      // })
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
