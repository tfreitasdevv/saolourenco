 import 'package:mobx/mobx.dart';

part 'cor_controller.g.dart';

class CorController = _CorBase with _$CorController;

abstract class _CorBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
