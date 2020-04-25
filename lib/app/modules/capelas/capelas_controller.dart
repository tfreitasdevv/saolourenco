import 'package:mobx/mobx.dart';

part 'capelas_controller.g.dart';

class CapelasController = _CapelasBase with _$CapelasController;

abstract class _CapelasBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
