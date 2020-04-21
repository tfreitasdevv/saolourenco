import 'package:mobx/mobx.dart';

part 'crisma_controller.g.dart';

class CrismaController = _CrismaBase with _$CrismaController;

abstract class _CrismaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
