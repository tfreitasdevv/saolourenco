import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'local_user.g.dart';

class LocalUser = _LocalUserBase with _$LocalUser;

abstract class _LocalUserBase with Store {

  @observable
  FirebaseUser firebaseUser;
  

  @action
  setFirebaseUser(FirebaseUser value){
    firebaseUser = value;
  }

  @observable
  String nome;
  @action
  mudarNome(String value) => nome = value;

  @observable
  String email;
  @action
  mudarEmail(String value) => email = value;

  
}