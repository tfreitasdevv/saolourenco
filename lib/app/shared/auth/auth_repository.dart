import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/local_user.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final localUser = Modular.get<LocalUser>();
  Map<String, dynamic> dadosUsuario = Map();
  

  getUser() {}

  void criarUsuario(
      {@required Map<String, dynamic> dadosUsuario,
      @required String senha,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) {
    _auth
        .createUserWithEmailAndPassword(
      email: dadosUsuario["email"],
      password: senha,
    )
        .then((authResult) async {
      localUser.setFirebaseUser(authResult.user);
      await _salvarDadosUsuario(dadosUsuario);
      onSuccess();
    }).catchError((e) {
      print(e.code);
      onFail();
    });
  }

  Future<Null> _salvarDadosUsuario(Map<String, dynamic> dadosUsuario) async {
    this.dadosUsuario = dadosUsuario;
    await Firestore.instance
        .collection('usuarios')
        .document(localUser.firebaseUser.uid)
        .setData(dadosUsuario);
  }
}
