import 'package:mobx/mobx.dart';

part 'familiar_controller.g.dart';

class FamiliarController = _FamiliarBase with _$FamiliarController;

abstract class _FamiliarBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
