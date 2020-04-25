import 'package:mobx/mobx.dart';

part 'alfabetizacao_controller.g.dart';

class AlfabetizacaoController = _AlfabetizacaoBase
    with _$AlfabetizacaoController;

abstract class _AlfabetizacaoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
