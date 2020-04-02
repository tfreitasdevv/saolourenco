import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
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

  @observable
  String senha;
  @action
  mudarSenha(String value) => senha = value;

  @observable
  String celular;
  @action
  mudarCelular(String value) {
    celular = value;
    print(celular);
    print(celular.length);
  }

  @observable
  String bairro;
  @action
  mudarBairro(String value) => bairro = value;

  @observable
  String cidade;
  @action
  mudarCidade(String value) => cidade = value;

  @observable
  String complemento;
  @action
  mudarComplemento(String value) => complemento = value;

  @observable
  String estado;
  @action
  mudarEstado(String value) => estado = value;

  @observable
  String logradouro;
  @action
  mudarLogradouro(String value) => logradouro = value;

  @observable
  String numero;
  @action
  mudarNumero(String value) => numero = value;

  @observable
  String nascimento;
  @action
  mudarNascimento(String value) {
    nascimento = value;
    print(nascimento);
    DateTime aux = DateFormat("dd/MM/yyyy").parse(nascimento).add(Duration(hours: 3));
    Timestamp auxTS = Timestamp.fromDate(aux);
    mudarNascAux(aux);
    mudarNascTS(auxTS);
  }

  @observable
  DateTime nascimentoData;
  @action
  mudarNascAux(DateTime value) {
    nascimentoData = value;
    print("---------------executado DateTime-----------------");
    print(nascimentoData);
  }

  @observable
  Timestamp nascimentoTimestamp;
  @action
  mudarNascTS(Timestamp value) {
    nascimentoTimestamp = value;
    print("---------------executado Timestamp-----------------");
    print(nascimentoTimestamp);
  }

  @observable
  String sexo;
  @action
  mudarSexo(String value) => sexo = value;
  
  
}