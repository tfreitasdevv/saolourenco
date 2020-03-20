import 'package:mobx/mobx.dart';

part 'membros_musica_controller.g.dart';

class MembrosMusicaController = _MembrosMusicaBase
    with _$MembrosMusicaController;

abstract class _MembrosMusicaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
