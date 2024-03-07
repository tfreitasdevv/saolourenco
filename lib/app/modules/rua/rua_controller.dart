import 'package:mobx/mobx.dart';

part 'rua_controller.g.dart';

class RuaController = _RuaBase with _$RuaController;

abstract class _RuaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
