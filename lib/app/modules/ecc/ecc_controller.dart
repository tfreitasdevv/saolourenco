import 'package:mobx/mobx.dart';

part 'ecc_controller.g.dart';

class EccController = _EccBase with _$EccController;

abstract class _EccBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
