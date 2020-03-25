import 'package:cloud_firestore/cloud_firestore.dart';

class EscalaMusicaDomingoModel {

  String id;
  int quantidadeDomingos;
  String mes;

  String grupoMissa1;
  String dataMissa1;
  String horaMissa1;
  int quantidadeHorariosMissa1;

  String grupoMissa2;
  String dataMissa2;
  String horaMissa2;
  int quantidadeHorariosMissa2;

  String grupoMissa3;
  String dataMissa3;
  String horaMissa3;
  int quantidadeHorariosMissa3;

  String grupoMissa4;
  String dataMissa4;
  String horaMissa4;
  int quantidadeHorariosMissa4;

  String grupoMissa5;
  String dataMissa5;
  String horaMissa5;
  int quantidadeHorariosMissa5;
  
  EscalaMusicaDomingoModel.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    quantidadeDomingos = snapshot.data['quantidade'];
    mes = snapshot.data['mes'];
    //Missa1
    grupoMissa1 = snapshot.data['missa1']['horario1'][''];

  }

}