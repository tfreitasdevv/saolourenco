import 'package:cloud_firestore/cloud_firestore.dart';

preencherDados() async {
    await Firestore.instance
        .collection('musica_mes_corrente')
        .document('domingo')
        .setData({
      "missa1": {
        "data": "8 de março de 2020 00:00:00 UTC-3",
        "quantidade": 3,
        "horario1": {"grupo": "Grupo Cerimônia", "horario": "08:00"},
        "horario2": {"grupo": "Grupo do João", "horario": "10:30"},
        "horario3": {"grupo": "Grupo do Walter", "horario": "18:30"}
      },
      "missa2": {
        "data": "8 de março de 2020 00:00:00 UTC-3",
        "quantidade": 3,
        "horario1": {"grupo": "Grupo da Graça", "horario": "08:00"},
        "horario2": {"grupo": "Grupo do Walter", "horario": "10:30"},
        "horario3": {"grupo": "Grupo do Thiago", "horario": "18:30"},
      },
      "missa3": {
        "data": "8 de março de 2020 00:00:00 UTC-3",
        "quantidade": 3,
        "horario1": {"grupo": "Grupo do Bira", "horario": "08:00"},
        "horario2": {"grupo": "N.S. de Fátima", "horario": "10:30"},
        "horario3": {"grupo": "Grupo Cerimônia", "horario": "18:30"}
      },
      "missa4": {
        "data": "8 de março de 2020 00:00:00 UTC-3",
        "quantidade": 3,
        "horario1": {"grupo": "Grupo da Graça", "horario": "08:00"},
        "horario2": {"grupo": "Grupo do Thiago", "horario": "10:30"},
        "horario3": {"grupo": "Grupo Divina Luz", "horario": "18:30"}
      },
      "missa5": {
        "data": "8 de março de 2020 00:00:00 UTC-3",
        "quantidade": 3,
        "horario1": {"grupo": "Grupo da Graça", "horario": "08:00"},
        "horario2": {"grupo": "Grupo do João", "horario": "10:30"},
        "horario3": {"grupo": "Grupo da Annie", "horario": "18:30"}
      },
      "mes": "Março de 2020",
      "quantidade": "5"
    });
  }