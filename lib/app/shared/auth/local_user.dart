import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'local_user.g.dart';

class LocalUser = _LocalUserBase with _$LocalUser;

abstract class _LocalUserBase with Store {

  @observable
  FirebaseUser firebaseUser;
  @observable
  String nome;
  @observable
  String email;

  @action
  setFirebaseUser(FirebaseUser value){
    firebaseUser = value;
  }
  @action
  setNome(String value){
    nome = value;
  }
  @action
  setEmail(String value){
    email = value;
  }
  
}