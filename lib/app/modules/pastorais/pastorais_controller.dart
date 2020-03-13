import 'package:mobx/mobx.dart';

part 'pastorais_controller.g.dart';

class PastoraisController = _PastoraisControllerBase with _$PastoraisController;

abstract class _PastoraisControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
