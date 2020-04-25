import 'package:mobx/mobx.dart';

part 'mej_controller.g.dart';

class MejController = _MejBase with _$MejController;

abstract class _MejBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
