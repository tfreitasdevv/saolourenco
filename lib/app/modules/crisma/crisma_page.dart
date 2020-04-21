import 'package:flutter/material.dart';

class CrismaPage extends StatefulWidget {
  final String title;
  const CrismaPage({Key key, this.title = "Crisma"}) : super(key: key);

  @override
  _CrismaPageState createState() => _CrismaPageState();
}

class _CrismaPageState extends State<CrismaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
