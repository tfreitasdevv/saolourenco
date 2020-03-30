// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupFormModel on _SignupFormModelBase, Store {
  final _$nomeAtom = Atom(name: '_SignupFormModelBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_SignupFormModelBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$celularAtom = Atom(name: '_SignupFormModelBase.celular');

  @override
  String get celular {
    _$celularAtom.context.enforceReadPolicy(_$celularAtom);
    _$celularAtom.reportObserved();
    return super.celular;
  }

  @override
  set celular(String value) {
    _$celularAtom.context.conditionallyRunInAction(() {
      super.celular = value;
      _$celularAtom.reportChanged();
    }, _$celularAtom, name: '${_$celularAtom.name}_set');
  }

  final _$bairroAtom = Atom(name: '_SignupFormModelBase.bairro');

  @override
  String get bairro {
    _$bairroAtom.context.enforceReadPolicy(_$bairroAtom);
    _$bairroAtom.reportObserved();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.context.conditionallyRunInAction(() {
      super.bairro = value;
      _$bairroAtom.reportChanged();
    }, _$bairroAtom, name: '${_$bairroAtom.name}_set');
  }

  final _$cidadeAtom = Atom(name: '_SignupFormModelBase.cidade');

  @override
  String get cidade {
    _$cidadeAtom.context.enforceReadPolicy(_$cidadeAtom);
    _$cidadeAtom.reportObserved();
    return super.cidade;
  }

  @override
  set cidade(String value) {
    _$cidadeAtom.context.conditionallyRunInAction(() {
      super.cidade = value;
      _$cidadeAtom.reportChanged();
    }, _$cidadeAtom, name: '${_$cidadeAtom.name}_set');
  }

  final _$complementoAtom = Atom(name: '_SignupFormModelBase.complemento');

  @override
  String get complemento {
    _$complementoAtom.context.enforceReadPolicy(_$complementoAtom);
    _$complementoAtom.reportObserved();
    return super.complemento;
  }

  @override
  set complemento(String value) {
    _$complementoAtom.context.conditionallyRunInAction(() {
      super.complemento = value;
      _$complementoAtom.reportChanged();
    }, _$complementoAtom, name: '${_$complementoAtom.name}_set');
  }

  final _$estadoAtom = Atom(name: '_SignupFormModelBase.estado');

  @override
  String get estado {
    _$estadoAtom.context.enforceReadPolicy(_$estadoAtom);
    _$estadoAtom.reportObserved();
    return super.estado;
  }

  @override
  set estado(String value) {
    _$estadoAtom.context.conditionallyRunInAction(() {
      super.estado = value;
      _$estadoAtom.reportChanged();
    }, _$estadoAtom, name: '${_$estadoAtom.name}_set');
  }

  final _$logradouroAtom = Atom(name: '_SignupFormModelBase.logradouro');

  @override
  String get logradouro {
    _$logradouroAtom.context.enforceReadPolicy(_$logradouroAtom);
    _$logradouroAtom.reportObserved();
    return super.logradouro;
  }

  @override
  set logradouro(String value) {
    _$logradouroAtom.context.conditionallyRunInAction(() {
      super.logradouro = value;
      _$logradouroAtom.reportChanged();
    }, _$logradouroAtom, name: '${_$logradouroAtom.name}_set');
  }

  final _$numeroAtom = Atom(name: '_SignupFormModelBase.numero');

  @override
  String get numero {
    _$numeroAtom.context.enforceReadPolicy(_$numeroAtom);
    _$numeroAtom.reportObserved();
    return super.numero;
  }

  @override
  set numero(String value) {
    _$numeroAtom.context.conditionallyRunInAction(() {
      super.numero = value;
      _$numeroAtom.reportChanged();
    }, _$numeroAtom, name: '${_$numeroAtom.name}_set');
  }

  final _$nascimentoAtom = Atom(name: '_SignupFormModelBase.nascimento');

  @override
  String get nascimento {
    _$nascimentoAtom.context.enforceReadPolicy(_$nascimentoAtom);
    _$nascimentoAtom.reportObserved();
    return super.nascimento;
  }

  @override
  set nascimento(String value) {
    _$nascimentoAtom.context.conditionallyRunInAction(() {
      super.nascimento = value;
      _$nascimentoAtom.reportChanged();
    }, _$nascimentoAtom, name: '${_$nascimentoAtom.name}_set');
  }

  final _$sexoAtom = Atom(name: '_SignupFormModelBase.sexo');

  @override
  String get sexo {
    _$sexoAtom.context.enforceReadPolicy(_$sexoAtom);
    _$sexoAtom.reportObserved();
    return super.sexo;
  }

  @override
  set sexo(String value) {
    _$sexoAtom.context.conditionallyRunInAction(() {
      super.sexo = value;
      _$sexoAtom.reportChanged();
    }, _$sexoAtom, name: '${_$sexoAtom.name}_set');
  }

  final _$_SignupFormModelBaseActionController =
      ActionController(name: '_SignupFormModelBase');

  @override
  dynamic mudarNome(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarNome(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEmail(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarEmail(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarCelular(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarCelular(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarBairro(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarBairro(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarCidade(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarCidade(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarComplemento(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarComplemento(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEstado(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarEstado(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarLogradouro(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarLogradouro(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarNumero(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarNumero(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarNascimento(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarNascimento(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSexo(String value) {
    final _$actionInfo = _$_SignupFormModelBaseActionController.startAction();
    try {
      return super.mudarSexo(value);
    } finally {
      _$_SignupFormModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'nome: ${nome.toString()},email: ${email.toString()},celular: ${celular.toString()},bairro: ${bairro.toString()},cidade: ${cidade.toString()},complemento: ${complemento.toString()},estado: ${estado.toString()},logradouro: ${logradouro.toString()},numero: ${numero.toString()},nascimento: ${nascimento.toString()},sexo: ${sexo.toString()}';
    return '{$string}';
  }
}
