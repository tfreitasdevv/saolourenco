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
        size: 30,
      ),
      title: Text(
        horario,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
