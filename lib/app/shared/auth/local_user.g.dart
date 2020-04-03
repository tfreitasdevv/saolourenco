// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocalUser on _LocalUserBase, Store {
  final _$firebaseUserAtom = Atom(name: '_LocalUserBase.firebaseUser');

  @override
  FirebaseUser get firebaseUser {
    _$firebaseUserAtom.context.enforceReadPolicy(_$firebaseUserAtom);
    _$firebaseUserAtom.reportObserved();
    return super.firebaseUser;
  }

  @override
  set firebaseUser(FirebaseUser value) {
    _$firebaseUserAtom.context.conditionallyRunInAction(() {
      super.firebaseUser = value;
      _$firebaseUserAtom.reportChanged();
    }, _$firebaseUserAtom, name: '${_$firebaseUserAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_LocalUserBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$nomeAtom = Atom(name: '_LocalUserBase.nome');

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

  final _$emailAtom = Atom(name: '_LocalUserBase.email');

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

  final _$erroAoCriarUsuarioAtom =
      Atom(name: '_LocalUserBase.erroAoCriarUsuario');

  @override
  String get erroAoCriarUsuario {
    _$erroAoCriarUsuarioAtom.context
        .enforceReadPolicy(_$erroAoCriarUsuarioAtom);
    _$erroAoCriarUsuarioAtom.reportObserved();
    return super.erroAoCriarUsuario;
  }

  @override
  set erroAoCriarUsuario(String value) {
    _$erroAoCriarUsuarioAtom.context.conditionallyRunInAction(() {
      super.erroAoCriarUsuario = value;
      _$erroAoCriarUsuarioAtom.reportChanged();
    }, _$erroAoCriarUsuarioAtom, name: '${_$erroAoCriarUsuarioAtom.name}_set');
  }

  final _$erroAoLogarAtom = Atom(name: '_LocalUserBase.erroAoLogar');

  @override
  String get erroAoLogar {
    _$erroAoLogarAtom.context.enforceReadPolicy(_$erroAoLogarAtom);
    _$erroAoLogarAtom.reportObserved();
    return super.erroAoLogar;
  }

  @override
  set erroAoLogar(String value) {
    _$erroAoLogarAtom.context.conditionallyRunInAction(() {
      super.erroAoLogar = value;
      _$erroAoLogarAtom.reportChanged();
    }, _$erroAoLogarAtom, name: '${_$erroAoLogarAtom.name}_set');
  }

  final _$setFirebaseUserAsyncAction = AsyncAction('setFirebaseUser');

  @override
  Future setFirebaseUser(FirebaseUser value) {
    return _$setFirebaseUserAsyncAction.run(() => super.setFirebaseUser(value));
  }

  final _$_LocalUserBaseActionController =
      ActionController(name: '_LocalUserBase');

  @override
  bool isLoggedIn() {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.isLoggedIn();
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsLoadingTrue() {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.setIsLoadingTrue();
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsLoadingFalse() {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.setIsLoadingFalse();
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarNome(String value) {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.mudarNome(value);
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEmail(String value) {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.mudarEmail(value);
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarErroAoCriarUsuario(String value) {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.mudarErroAoCriarUsuario(value);
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarErroAoLogar(String value) {
    final _$actionInfo = _$_LocalUserBaseActionController.startAction();
    try {
      return super.mudarErroAoLogar(value);
    } finally {
      _$_LocalUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'firebaseUser: ${firebaseUser.toString()},isLoading: ${isLoading.toString()},nome: ${nome.toString()},email: ${email.toString()},erroAoCriarUsuario: ${erroAoCriarUsuario.toString()},erroAoLogar: ${erroAoLogar.toString()}';
    return '{$string}';
  }
}
