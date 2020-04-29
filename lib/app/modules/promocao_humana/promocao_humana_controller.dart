import 'package:mobx/mobx.dart';

part 'promocao_humana_controller.g.dart';

class PromocaoHumanaController = _PromocaoHumanaBase
    with _$PromocaoHumanaController;

abstract class _PromocaoHumanaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
