import 'package:mobx/mobx.dart';

part 'signup_form_model.g.dart';

class SignupFormModel = _SignupFormModelBase with _$SignupFormModel;

abstract class _SignupFormModelBase with Store {

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
  mudarCelular(String value) => celular = value;

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
  mudarNascimento(String value) => nascimento = value;

 @observable
  String sexo;
  @action
  mudarSexo(String value) => sexo = value;

  
}