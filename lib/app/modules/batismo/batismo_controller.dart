import 'package:mobx/mobx.dart';

part 'batismo_controller.g.dart';

class BatismoController = _BatismoBase with _$BatismoController;

abstract class _BatismoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
