import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/local_user.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final localUser = Modular.get<LocalUser>();
  Map<String, dynamic> dadosUsuario = Map();

  void criarUsuario(
      {@required Map<String, dynamic> dadosUsuario,
      @required String senha,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) async {
    await localUser.setIsLoadingTrue();
    _auth
        .createUserWithEmailAndPassword(
      email: dadosUsuario["email"],
      password: senha,
    )
        .then((authResult) async {
      localUser.setFirebaseUser(authResult.user);
      await _salvarDadosUsuario(dadosUsuario);
      onSuccess();
      await localUser.setIsLoadingFalse();
    }).catchError((e) async {
      await localUser.mudarErroAoCriarUsuario(e.code);
      onFail();
      await localUser.setIsLoadingFalse();
    });
  }

  Future<Null> _salvarDadosUsuario(Map<String, dynamic> dadosUsuario) async {
    this.dadosUsuario = dadosUsuario;
    await Firestore.instance
        .collection('usuarios')
        .document(localUser.firebaseUser.uid)
        .setData(dadosUsuario);
  }

  Future<Null> atualizarDadosUsuario(Map<String, dynamic> dadosUsuario) async {
    this.dadosUsuario = dadosUsuario;
    await Firestore.instance
        .collection('usuarios')
        .document(localUser.firebaseUser.uid)
        .updateData(dadosUsuario);
  }

  void logar(
      {@required String email,
      @required String senha,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) async {
    await localUser.setIsLoadingTrue();
    _auth
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((authResult) async {
      await localUser.setFirebaseUser(authResult.user);
      await obterUsuarioAtual();
      onSuccess();
      await localUser.setIsLoadingFalse();
    }).catchError((e) async {
      await localUser.mudarErroAoLogar(e.code);
      onFail();
      await localUser.setIsLoadingFalse();
    });
  }

  void logout() async {
    await _auth.signOut();
    dadosUsuario = Map();
    localUser.setFirebaseUser(null);
    localUser.mudarNome(null);
    localUser.mudarEmail(null);
  }

  Future<Null> obterUsuarioAtual() async {
    if (localUser.firebaseUser == null)
      localUser.firebaseUser = await _auth.currentUser();
    if (localUser.firebaseUser != null) {
      DocumentSnapshot docUser = await Firestore.instance
          .collection('usuarios')
          .document(localUser.firebaseUser.uid)
          .get();
      dadosUsuario = docUser.data;
    }
  }

  Future<Map<String, dynamic>> obterUsuarioProfile() async {
    if (localUser.firebaseUser == null)
      localUser.firebaseUser = await _auth.currentUser();
    if (localUser.firebaseUser != null) {
      DocumentSnapshot docUser = await Firestore.instance
          .collection('usuarios')
          .document(localUser.firebaseUser.uid)
          .get();
      dadosUsuario = docUser.data;
    }
    return dadosUsuario;
  }

  void recuperarSenha(String email) {
    _auth.sendPasswordResetEmail(email: email);
  }
}
