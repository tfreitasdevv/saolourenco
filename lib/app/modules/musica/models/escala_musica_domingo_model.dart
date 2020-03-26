import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class EscalaMusicaDomingoModel {
  String id;
  int quantidadeDomingos;
  String mes;

  //Missa 1
  String dataMissa1;
  String grupoH1M1;
  String horarioH1M1;
  String grupoH2M1;
  String horarioH2M1;
  String grupoH3M1;
  String horarioH3M1;

  //Missa 2
  String dataMissa2;
  String grupoH1M2;
  String horarioH1M2;
  String grupoH2M2;
  String horarioH2M2;
  String grupoH3M2;
  String horarioH3M2;

  //Missa 3
  String dataMissa3;
  String grupoH1M3;
  String horarioH1M3;
  String grupoH2M3;
  String horarioH2M3;
  String grupoH3M3;
  String horarioH3M3;

  //Missa 4
  String dataMissa4;
  String grupoH1M4;
  String horarioH1M4;
  String grupoH2M4;
  String horarioH2M4;
  String grupoH3M4;
  String horarioH3M4;

  //Missa 5
  String dataMissa5;
  String grupoH1M5;
  String horarioH1M5;
  String grupoH2M5;
  String horarioH2M5;
  String grupoH3M5;
  String horarioH3M5;

  EscalaMusicaDomingoModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    quantidadeDomingos = snapshot.data['quantidade'];
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
    if (quantidadeDomingos > 4) {
      dataMissa5 = _timestampToString(snapshot.data['missa5']['data']);
    } else {
      dataMissa5 = "";
    }

    //GRUPOS
    grupoH1M1 = snapshot.data['missa1']['horario1']['grupo'];
    grupoH2M1 = snapshot.data['missa1']['horario2']['grupo'];
    grupoH3M1 = snapshot.data['missa1']['horario3']['grupo'];
    grupoH1M2 = snapshot.data['missa2']['horario1']['grupo'];
    grupoH2M2 = snapshot.data['missa2']['horario2']['grupo'];
    grupoH3M2 = snapshot.data['missa2']['horario3']['grupo'];
    grupoH1M3 = snapshot.data['missa3']['horario1']['grupo'];
    grupoH2M3 = snapshot.data['missa3']['horario2']['grupo'];
    grupoH3M3 = snapshot.data['missa3']['horario3']['grupo'];
    grupoH1M4 = snapshot.data['missa4']['horario1']['grupo'];
    grupoH2M4 = snapshot.data['missa4']['horario2']['grupo'];
    grupoH3M4 = snapshot.data['missa4']['horario3']['grupo'];
    if (quantidadeDomingos > 4) {
      grupoH1M5 = snapshot.data['missa5']['horario1']['grupo'];
      grupoH2M5 = snapshot.data['missa5']['horario2']['grupo'];
      grupoH3M5 = snapshot.data['missa5']['horario3']['grupo'];
    } else {
      grupoH1M5 = "";
      grupoH2M5 = "";
      grupoH3M5 = "";
    }

    //HORARIOS
    horarioH1M1 = snapshot.data['missa1']['horario1']['horario'];
    horarioH2M1 = snapshot.data['missa1']['horario2']['horario'];
    horarioH3M1 = snapshot.data['missa1']['horario3']['horario'];
    horarioH1M2 = snapshot.data['missa2']['horario1']['horario'];
    horarioH2M2 = snapshot.data['missa2']['horario2']['horario'];
    horarioH3M2 = snapshot.data['missa2']['horario3']['horario'];
    horarioH1M3 = snapshot.data['missa3']['horario1']['horario'];
    horarioH2M3 = snapshot.data['missa3']['horario2']['horario'];
    horarioH3M3 = snapshot.data['missa3']['horario3']['horario'];
    horarioH1M4 = snapshot.data['missa4']['horario1']['horario'];
    horarioH2M4 = snapshot.data['missa4']['horario2']['horario'];
    horarioH3M4 = snapshot.data['missa4']['horario3']['horario'];
    if (quantidadeDomingos > 4) {
      horarioH1M5 = snapshot.data['missa5']['horario1']['horario'];
      horarioH2M5 = snapshot.data['missa5']['horario2']['horario'];
      horarioH3M5 = snapshot.data['missa5']['horario3']['horario'];
    } else {
      horarioH1M5 = "";
      horarioH2M5 = "";
      horarioH3M5 = "";
    }
  }
}
