import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class EscalaMusicaSabadoModel {
  String id;
  int quantidadeSabados;
  String mes;

  //Missa 1
  String dataMissa1;
  String grupoH1M1;
  String horarioH1M1;

  //Missa 2
  String dataMissa2;
  String grupoH1M2;
  String horarioH1M2;

  //Missa 3
  String dataMissa3;
  String grupoH1M3;
  String horarioH1M3;

  //Missa 4
  String dataMissa4;
  String grupoH1M4;
  String horarioH1M4;

  //Missa 5
  String dataMissa5;
  String grupoH1M5;
  String horarioH1M5;

  EscalaMusicaSabadoModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    quantidadeSabados = snapshot.data['quantidade'];
    mes = snapshot.data['mes'];

    String _timestampToString(Timestamp timestamp) {
      Timestamp dataTS = timestamp;
      DateTime dataDT =
          DateTime.fromMillisecondsSinceEpoch(dataTS.seconds * 1000);
      var dataFormatada = DateFormat('dd/MM/yyyy').format(dataDT);
      return dataFormatada.toString();
    }

    //DATAS
    dataMissa1 = _timestampToString(snapshot.data['missa1']['data']);
    dataMissa2 = _timestampToString(snapshot.data['missa2']['data']);
    dataMissa3 = _timestampToString(snapshot.data['missa3']['data']);
    dataMissa4 = _timestampToString(snapshot.data['missa4']['data']);
    if (quantidadeSabados > 4) {
      dataMissa5 = _timestampToString(snapshot.data['missa5']['data']);
    } else {
      dataMissa5 = "";
    }

    //GRUPOS
    grupoH1M1 = snapshot.data['missa1']['horario1']['grupo'];
    grupoH1M2 = snapshot.data['missa2']['horario1']['grupo'];
    grupoH1M3 = snapshot.data['missa3']['horario1']['grupo'];
    grupoH1M4 = snapshot.data['missa4']['horario1']['grupo'];
    if (quantidadeSabados > 4) {
      grupoH1M5 = snapshot.data['missa5']['horario1']['grupo'];
    } else {
      grupoH1M5 = "";
    }

    //HORARIOS
    horarioH1M1 = snapshot.data['missa1']['horario1']['horario'];
    horarioH1M2 = snapshot.data['missa2']['horario1']['horario'];
    horarioH1M3 = snapshot.data['missa3']['horario1']['horario'];
    horarioH1M4 = snapshot.data['missa4']['horario1']['horario'];
    if (quantidadeSabados > 4) {
      horarioH1M5 = snapshot.data['missa5']['horario1']['horario'];
    } else {
      horarioH1M5 = "";
    }
  }

  //Tentativa de criar Map

  Map<String, dynamic> escalaMapa;

  EscalaMusicaSabadoModel.toMap(DocumentSnapshot snapshot) {
    escalaMapa = {
      "mes": snapshot.data['mes'],
      "quantidade": snapshot.data['quantidade'],
      "missa1": {
        "data": snapshot.data['missa1']['data'],
        "quantidade": snapshot.data['missa1']['quantidade'],
        "horario1": {
          "grupo": snapshot.data['missa1']['horario1']['grupo'],
          "horario": snapshot.data['missa1']['horario1']['horario'],
        }
      },
      "missa2": {
        "data": snapshot.data['missa2']['data'],
        "quantidade": snapshot.data['missa2']['quantidade'],
        "horario1": {
          "grupo": snapshot.data['missa2']['horario1']['grupo'],
          "horario": snapshot.data['missa2']['horario1']['horario'],
        }
      },
      "missa3": {
        "data": snapshot.data['missa3']['data'],
        "quantidade": snapshot.data['missa3']['quantidade'],
        "horario1": {
          "grupo": snapshot.data['missa3']['horario1']['grupo'],
          "horario": snapshot.data['missa3']['horario1']['horario'],
        }
      },
      "missa4": {
        "data": snapshot.data['missa4']['data'],
        "quantidade": snapshot.data['missa4']['quantidade'],
        "horario1": {
          "grupo": snapshot.data['missa4']['horario1']['grupo'],
          "horario": snapshot.data['missa4']['horario1']['horario'],
        }
      },
      "missa5": {
        "data": snapshot.data['missa5']['data'],
        "quantidade": snapshot.data['missa5']['quantidade'],
        "horario1": {
          "grupo": snapshot.data['missa5']['horario1']['grupo'],
          "horario": snapshot.data['missa5']['horario1']['horario'],
        }
      }
    };
  }
}
