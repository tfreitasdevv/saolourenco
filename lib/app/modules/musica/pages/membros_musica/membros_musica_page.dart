import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/pages/membros_musica/escala_musica_page.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/repositories/escala_musica_repository.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class MembrosMusicaPage extends StatefulWidget {
  final String title;
  const MembrosMusicaPage({Key key, this.title = "Pastoral da Música"})
      : super(key: key);

  @override
  _MembrosMusicaPageState createState() => _MembrosMusicaPageState();
}

class _MembrosMusicaPageState extends State<MembrosMusicaPage> with SingleTickerProviderStateMixin<MembrosMusicaPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            Container(color: Colors.yellow),
            Container(color: Colors.green),
            EscalaMusicaPage(
              repository: EscalaMusicaRepository(),
            ),
          ],
        ),
      ),
    );
  }
}
