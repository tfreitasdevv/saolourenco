import 'package:flutter/material.dart';

class HorarioTile extends StatelessWidget {

  final String horario;

  const HorarioTile({Key key, this.horario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(
        Icons.access_time,
        color: Colors.white,
        size: MediaQuery.of(context).size.width < 400 ? 26 : 30,
      ),
      title: Text(
        horario,
        style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width < 400 ? 16 : 18),
      ),
    );
  }
}
