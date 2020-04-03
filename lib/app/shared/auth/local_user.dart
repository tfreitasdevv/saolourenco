import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'local_user.g.dart';

class LocalUser = _LocalUserBase with _$LocalUser;

abstract class _LocalUserBase with Store {
  @observable
  FirebaseUser firebaseUser;
  @action
  setFirebaseUser(FirebaseUser value) async {
    firebaseUser = value;
    DocumentSnapshot doc = await Firestore.instance
        .collection('usuarios')
        .document(value.uid)
        .get();
    String nomeAux = doc['nome'];
    await mudarNome(nomeAux);
  }

  @action
  bool isLoggedIn() {
    return firebaseUser != null;
  }

  @observable
  bool isLoading = false;
  @action
  setIsLoadingTrue() => isLoading = true;
  @action
  setIsLoadingFalse() => isLoading = false;

  @observable
  String nome;
  @action
  mudarNome(String value) => nome = value;

  @observable
  String email;
  @action
  mudarEmail(String value) => email = value;

  @observable
  String erroAoCriarUsuario;
  @action
  mudarErroAoCriarUsuario(String value){
    erroAoCriarUsuario = value;
  }

  @observable
  String erroAoLogar;
  @action
  mudarErroAoLogar(String value){
    erroAoLogar = value;
  }
}
