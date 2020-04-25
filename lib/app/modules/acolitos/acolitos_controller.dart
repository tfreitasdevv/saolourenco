import 'package:mobx/mobx.dart';

part 'acolitos_controller.g.dart';

class AcolitosController = _AcolitosBase with _$AcolitosController;

abstract class _AcolitosBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
