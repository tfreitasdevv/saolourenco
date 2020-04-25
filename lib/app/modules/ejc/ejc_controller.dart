import 'package:mobx/mobx.dart';

part 'ejc_controller.g.dart';

class EjcController = _EjcBase with _$EjcController;

abstract class _EjcBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
