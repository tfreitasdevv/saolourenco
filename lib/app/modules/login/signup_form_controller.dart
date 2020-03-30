import 'package:mobx/mobx.dart';
import 'package:paroquia_sao_lourenco/app/modules/login/signup_form_model.dart';

part 'signup_form_controller.g.dart';

class SignupFormController = _SignupFormControllerBase
    with _$SignupFormController;

abstract class _SignupFormControllerBase with Store {
  var dadosFormulario = SignupFormModel();

  String validarNome() {
    if (dadosFormulario.nome == null ||
        dadosFormulario.nome.isEmpty ||
        dadosFormulario.nome.length < 5) {
      return "Campo obrigatório. Deve conter pelo menos 6 caracteres";
    }
    return null;
  }
}
