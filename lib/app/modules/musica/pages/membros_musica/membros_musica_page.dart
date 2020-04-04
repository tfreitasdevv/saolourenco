import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/pages/membros_musica/avisos_musica_page.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/pages/membros_musica/escala_musica_page.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/pages/membros_musica/escala_musica_sabado_page.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/repositories/escala_musica_repository.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/auth_repository.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/local_user.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class MembrosMusicaPage extends StatefulWidget {
  final String title;
  const MembrosMusicaPage({Key key, this.title = "Pastoral da Música"})
      : super(key: key);

  @override
  _MembrosMusicaPageState createState() => _MembrosMusicaPageState();
}

class _MembrosMusicaPageState extends State<MembrosMusicaPage>
    with SingleTickerProviderStateMixin<MembrosMusicaPage> {
  final localUser = Modular.get<LocalUser>();
  final authRepo = Modular.get<AuthRepository>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Observer(builder: (_) {
          return Drawer(
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: t2),
                  accountName: Text(localUser.firebaseUser == null
                      ? "Paróquia São Lourenço"
                      : localUser.nome),
                  accountEmail: GestureDetector(
                    onTap: localUser.firebaseUser == null
                        ? () {
                            Modular.to.pushNamed('/login');
                          }
                        : () {},
                    child: Text(localUser.firebaseUser == null
                        ? "CLIQUE AQUI PARA FAZER LOGIN"
                        : localUser.firebaseUser.email),
                  ),
                  currentAccountPicture:
                      InkWell(child: Image.asset(iconeBranco)),
                ),
                InkWell(
                  onTap: () {
                    Modular.to.pushReplacementNamed('/');
                  },
                  child: ListTile(
                    title: Text(
                      "PÁGINA INICIAL",
                      style: TextStyle(color: t1),
                    ),
                    leading: Icon(Icons.home, color: t2),
                  ),
                ),
                Container(
                  child: localUser.firebaseUser == null
                      ? null
                      : InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              "EDITAR PERFIL",
                              style: TextStyle(color: t1),
                            ),
                            leading: Icon(Icons.account_circle, color: t2),
                          ),
                        ),
                ),
                Container(
                  child: localUser.firebaseUser == null
                      ? null
                      : InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              "ALTERAR SENHA",
                              style: TextStyle(color: t1),
                            ),
                            leading: Icon(Icons.lock_outline, color: t2),
                          ),
                        ),
                ),
                Container(
                  child: localUser.firebaseUser == null
                      ? null
                      : InkWell(
                          onTap: () {
                            authRepo.logout();
                            Modular.to.pushReplacementNamed('/');
                          },
                          child: ListTile(
                            title: Text(
                              "LOGOUT",
                              style: TextStyle(color: t1),
                            ),
                            leading: Icon(Icons.exit_to_app, color: t2),
                          ),
                        ),
                ),
              ],
            ),
          );
        }),
        appBar: AppBar(
          backgroundColor: t1,
          title: Text(widget.title),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Avisos", textAlign: TextAlign.center),
            ),
            Tab(
              child: Text("Escala de Sábado", textAlign: TextAlign.center),
            ),
            Tab(
              child: Text("Escala de Domingo", textAlign: TextAlign.center),
            ),
          ]),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            AvisosMusicaPage(),
            EscalaMusicaSabadoPage(
              repository: EscalaMusicaRepository(),
            ),
            EscalaMusicaPage(
              repository: EscalaMusicaRepository(),
            ),
          ],
        ),
      ),
    );
  }
}
