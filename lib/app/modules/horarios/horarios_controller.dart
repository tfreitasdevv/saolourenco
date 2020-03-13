import 'package:mobx/mobx.dart';

part 'horarios_controller.g.dart';

class HorariosController = _HorariosControllerBase with _$HorariosController;

abstract class _HorariosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
