import 'package:mobx/mobx.dart';

part 'sobre_controller.g.dart';

class SobreController = _SobreBase with _$SobreController;

abstract class _SobreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
