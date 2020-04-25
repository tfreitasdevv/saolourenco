import 'package:mobx/mobx.dart';

part 'eventos_controller.g.dart';

class EventosController = _EventosBase with _$EventosController;

abstract class _EventosBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
