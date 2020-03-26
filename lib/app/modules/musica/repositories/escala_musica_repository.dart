import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/escala_musica_domingo_model.dart';

class EscalaMusicaRepository {

  Future<EscalaMusicaDomingoModel> obterEscalaDomingoMesCorrente() async {
    DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection('musica_mes_corrente')
        .document('domingo')
        .get();
    EscalaMusicaDomingoModel escala =
        EscalaMusicaDomingoModel.fromDocument(documentSnapshot);
    print(escala);
    return escala;
  }

}