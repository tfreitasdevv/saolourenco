import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:paroquia_sao_lourenco/app/modules/musica/models/escala_musica_sabado_model.dart';

import '../models/escala_musica_domingo_model.dart';

class EscalaMusicaRepository {

  String mesAtual = DateTime.now().month.toString();
  String anoAtual = DateTime.now().year.toString();
  String mesProximo = DateTime.now().add(Duration(days: 31)).month.toString();
  String anoProximo = DateTime.now().add(Duration(days: 31)).year.toString();


  Future<EscalaMusicaDomingoModel> obterEscalaDomingoMesCorrente() async {
    DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection('musica_mes_corrente')
        .document('${mesAtual}_${anoAtual}_domingo')
        .get();
    EscalaMusicaDomingoModel escala =
        EscalaMusicaDomingoModel.fromDocument(documentSnapshot);
    return escala;
  }

  Future<EscalaMusicaDomingoModel> obterEscalaDomingoMesProximo() async {
    DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection('musica_mes_corrente')
        .document('${mesProximo}_${anoProximo}_domingo')
        .get();
    EscalaMusicaDomingoModel escala =
        EscalaMusicaDomingoModel.fromDocument(documentSnapshot);
    return escala;
  }

  Future<EscalaMusicaSabadoModel> obterEscalaSabadoMesCorrente() async {
    DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection('musica_mes_corrente')
        .document('${mesAtual}_${anoAtual}_sabado')
        .get();
    EscalaMusicaSabadoModel escala =
        EscalaMusicaSabadoModel.fromDocument(documentSnapshot);
    return escala;
  }

  Future<EscalaMusicaSabadoModel> obterEscalaSabadoMesProximo() async {
    DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection('musica_mes_corrente')
        .document('${mesProximo}_${anoProximo}_sabado')
        .get();
    EscalaMusicaSabadoModel escala =
        EscalaMusicaSabadoModel.fromDocument(documentSnapshot);
    return escala;
  }

  teste() async {
    DocumentSnapshot documentSnapshot2 = await Firestore.instance
        .collection('musica_mes_corrente')
        .document('domingo')
        .get();

    var escalaMapa =
        EscalaMusicaDomingoModel.toMap(documentSnapshot2).escalaMapa;

        await Firestore.instance.collection('musica_mes_corrente').document('abrDomingo').setData(escalaMapa);
  }
}
