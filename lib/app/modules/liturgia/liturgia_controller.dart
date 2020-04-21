import 'package:mobx/mobx.dart';

part 'liturgia_controller.g.dart';

class LiturgiaController = _LiturgiaBase with _$LiturgiaController;

abstract class _LiturgiaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
