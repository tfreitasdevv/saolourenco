import 'package:mobx/mobx.dart';

part 'catequese_controller.g.dart';

class CatequeseController = _CatequeseBase with _$CatequeseController;

abstract class _CatequeseBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
