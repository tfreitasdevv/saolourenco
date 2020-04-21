import 'package:mobx/mobx.dart';

part 'grupo_de_oracao_controller.g.dart';

class GrupoDeOracaoController = _GrupoDeOracaoBase
    with _$GrupoDeOracaoController;

abstract class _GrupoDeOracaoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
