import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';

class MembrosMusicaPage extends StatefulWidget {
  final String title;
  const MembrosMusicaPage({Key key, this.title = "Pastoral da Música"})
      : super(key: key);

  @override
  _MembrosMusicaPageState createState() => _MembrosMusicaPageState();
}

class _MembrosMusicaPageState extends State<MembrosMusicaPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: t2,
          title: Text(widget.title),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Escala das Missas",
            ),
            Tab(
              text: "Avisos",
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(color: Colors.green),
            Container(color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
