import 'package:mobx/mobx.dart';

part 'avisos_controller.g.dart';

class AvisosController = _AvisosControllerBase with _$AvisosController;

abstract class _AvisosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
