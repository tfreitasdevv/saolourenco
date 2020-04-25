import 'package:mobx/mobx.dart';

part 'pascom_controller.g.dart';

class PascomController = _PascomBase with _$PascomController;

abstract class _PascomBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
