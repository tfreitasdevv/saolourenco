import 'package:mobx/mobx.dart';

part 'coroinhas_controller.g.dart';

class CoroinhasController = _CoroinhasBase with _$CoroinhasController;

abstract class _CoroinhasBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
