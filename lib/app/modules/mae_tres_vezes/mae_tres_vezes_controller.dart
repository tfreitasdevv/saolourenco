import 'package:mobx/mobx.dart';

part 'mae_tres_vezes_controller.g.dart';

class MaeTresVezesController = _MaeTresVezesBase with _$MaeTresVezesController;

abstract class _MaeTresVezesBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
