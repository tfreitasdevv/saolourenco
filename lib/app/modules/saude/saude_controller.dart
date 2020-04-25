import 'package:mobx/mobx.dart';

part 'saude_controller.g.dart';

class SaudeController = _SaudeBase with _$SaudeController;

abstract class _SaudeBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
