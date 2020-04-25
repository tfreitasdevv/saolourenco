import 'package:mobx/mobx.dart';

part 'nascituro_controller.g.dart';

class NascituroController = _NascituroBase with _$NascituroController;

abstract class _NascituroBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
