import 'package:mobx/mobx.dart';

part 'dizimo_controller.g.dart';

class DizimoController = _DizimoBase with _$DizimoController;

abstract class _DizimoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
