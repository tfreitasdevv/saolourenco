import 'package:mobx/mobx.dart';

part 'musica_controller.g.dart';

class MusicaController = _MusicaBase with _$MusicaController;

abstract class _MusicaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
