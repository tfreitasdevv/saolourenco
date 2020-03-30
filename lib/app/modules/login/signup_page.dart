import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paroquia_sao_lourenco/app/modules/login/signup_form_model.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import 'login_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Criar usuário"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, LoginController> {
  final signupFormController = SignupFormModel();
  final double espacos = 12;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sexoController = TextEditingController();
  TextEditingController _celularController = TextEditingController();
  TextEditingController _nascimentoController = TextEditingController();
  TextEditingController _logradouroController = TextEditingController();
  TextEditingController _numeroController = TextEditingController();
  TextEditingController _complementoController = TextEditingController();
  TextEditingController _estadoController = TextEditingController();
  TextEditingController _cidadeController = TextEditingController();
  TextEditingController _bairroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: t1,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).padding.top * 3),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
            child: Form(
                key: _formKey,
                child: Theme(
                  data: Theme.of(context).copyWith(
                      primaryColor: Colors.white, hintColor: Colors.white),
                  child: Column(
                    children: <Widget>[
                      _buildRotulo("Dados pessoais"),
                      _buildTextFormField(
                          texto: "Nome",
                          onChanged: signupFormController.mudarNome,
                          controllerCampo: _nomeController,
                          tipoTeclado: TextInputType.text,
                          validacao: (String value) {
                            if (value.isEmpty || value == null) {
                              return "Campo obrigatório";
                            } else if (value.length < 5) {
                              return "Nome deve conter pelo menos 6 caracteres";
                            }
                            return null;
                          }),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: _buildTextFormField(
                                  texto: "Nascimento",
                                  onChanged:
                                      signupFormController.mudarNascimento,
                                  controllerCampo: _nascimentoController,
                                  tipoTeclado: TextInputType.datetime,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    } else if (value.length < 5) {
                                      return "Nome deve conter pelo menos 6 caracteres";
                                    }
                                    return null;
                                  })),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: _buildTextFormField(
                                  texto: "Sexo",
                                  onChanged: signupFormController.mudarSexo,
                                  controllerCampo: _sexoController,
                                  tipoTeclado: TextInputType.text,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    } else if (value.length < 5) {
                                      return "Nome deve conter pelo menos 6 caracteres";
                                    }
                                    return null;
                                  }))
                        ],
                      ),
                      SizedBox(height: espacos * 2.5),
                      _buildRotulo("Dados de contato"),
                      _buildTextFormField(
                          texto: "E-mail",
                          onChanged: signupFormController.mudarEmail,
                          controllerCampo: _emailController,
                          tipoTeclado: TextInputType.emailAddress,
                          validacao: (String value) {
                            if (value.isEmpty || value == null) {
                              return "Campo obrigatório";
                            } else if (value.length < 5) {
                              return "Nome deve conter pelo menos 6 caracteres";
                            }
                            return null;
                          }),
                      SizedBox(height: espacos),
                      _buildTextFormField(
                          texto: "Celular",
                          onChanged: signupFormController.mudarCelular,
                          controllerCampo: _celularController,
                          tipoTeclado: TextInputType.phone,
                          validacao: (String value) {
                            if (value.isEmpty || value == null) {
                              return "Campo obrigatório";
                            } else if (value.length < 5) {
                              return "Nome deve conter pelo menos 6 caracteres";
                            }
                            return null;
                          }),
                      SizedBox(height: espacos * 2.5),
                      _buildRotulo("Endereço"),
                      _buildTextFormField(
                          texto: "Logradouro",
                          onChanged: signupFormController.mudarLogradouro,
                          controllerCampo: _logradouroController,
                          tipoTeclado: TextInputType.text,
                          validacao: (String value) {
                            if (value.isEmpty || value == null) {
                              return "Campo obrigatório";
                            } else if (value.length < 5) {
                              return "Nome deve conter pelo menos 6 caracteres";
                            }
                            return null;
                          }),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: _buildTextFormField(
                                  texto: "Nº",
                                  onChanged: signupFormController.mudarNumero,
                                  controllerCampo: _numeroController,
                                  tipoTeclado: TextInputType.number,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    } else if (value.length < 5) {
                                      return "Nome deve conter pelo menos 6 caracteres";
                                    }
                                    return null;
                                  })),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: _buildTextFormField(
                                  texto: "Complemento",
                                  onChanged:
                                      signupFormController.mudarComplemento,
                                  controllerCampo: _complementoController,
                                  tipoTeclado: TextInputType.text,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    } else if (value.length < 5) {
                                      return "Nome deve conter pelo menos 6 caracteres";
                                    }
                                    return null;
                                  }))
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }

  _buildRotulo(String texto) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 12),
          child: Text(
            texto,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  _buildTextFormField(
      {@required String texto,
      @required Function onChanged,
      @required TextEditingController controllerCampo,
      @required Function validacao,
      @required TextInputType tipoTeclado,
      Function onTap}) {
    return TextFormField(
      controller: controllerCampo,
      validator: validacao,
      onChanged: onChanged,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      onTap: onTap,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(18),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(18),
        ),
        labelText: texto,
        labelStyle: TextStyle(color: Colors.white),
      ),
      keyboardType: tipoTeclado,
    );
  }
}
