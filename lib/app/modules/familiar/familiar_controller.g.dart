// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familiar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FamiliarController on _FamiliarBase, Store {
  final _$valueAtom = Atom(name: '_FamiliarBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_FamiliarBaseActionController =
      ActionController(name: '_FamiliarBase');

  @override
  void increment() {
    final _$actionInfo = _$_FamiliarBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_FamiliarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'value: ${value.toString()}';
    return '{$string}';
  }
}
