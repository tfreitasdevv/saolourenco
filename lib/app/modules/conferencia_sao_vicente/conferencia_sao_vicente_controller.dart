import 'package:mobx/mobx.dart';

part 'conferencia_sao_vicente_controller.g.dart';

class ConferenciaSaoVicenteController = _ConferenciaSaoVicenteBase
    with _$ConferenciaSaoVicenteController;

abstract class _ConferenciaSaoVicenteBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
