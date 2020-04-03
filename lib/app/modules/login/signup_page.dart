import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/auth_repository.dart';
import 'package:paroquia_sao_lourenco/app/shared/constants/constants.dart';
import '../../shared/auth/local_user.dart';
import '../../shared/constants/constants.dart';
import 'login_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Criar usuário"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, LoginController> {
  final firebase = Firestore.instance;
  final localUser = Modular.get<LocalUser>();
  final authRepo = Modular.get<AuthRepository>();
  final TextInputFormatter mascaraCelular = MaskTextInputFormatter(
      mask: '(##) # ####-####', filter: {'#': RegExp(r'[0-9]')});
  final TextInputFormatter mascaraData = MaskTextInputFormatter(
      mask: '##/##/####', filter: {'#': RegExp(r'[0-9]')});
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _celularController = TextEditingController();
  TextEditingController _nascimentoController = TextEditingController();
  TextEditingController _logradouroController = TextEditingController();
  TextEditingController _numeroController = TextEditingController();
  TextEditingController _complementoController = TextEditingController();
  TextEditingController _cidadeController = TextEditingController();
  TextEditingController _bairroController = TextEditingController();
  String _estadoController;
  String _sexoController;

  @override
  Widget build(BuildContext context) {
    final double espacos = MediaQuery.of(context).size.width > 400 ? 12 : 10;
    print(localUser.nome);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: t1,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
          child: SingleChildScrollView(
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
                          onChanged: (value) {
                            _nomeController = value;
                          },
                          controllerCampo: _nomeController,
                          tipoTeclado: TextInputType.text,
                          validacao: (String value) {
                            if (value.isEmpty || value == null) {
                              return "Campo obrigatório";
                            } else if (value.length < 5) {
                              return "Nome deve conter pelo menos 6 caracteres";
                            }
                            return null;
                          },
                          obscure: false),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width * 0.63,
                              child: _buildTextFormField(
                                  texto: "Nascimento",
                                  onChanged: (value) {
                                    _nascimentoController = value;
                                  },
                                  // editado: localUser.mudarNascimento,
                                  controllerCampo: _nascimentoController,
                                  tipoTeclado: TextInputType.datetime,
                                  mascara: [mascaraData],
                                  onTap: null,
                                  validacao: (String value) {
                                    DateTime max = DateTime(2020);
                                    DateTime min = DateTime(1900);
                                    DateTime aux =
                                        DateFormat("dd/MM/yyyy").parse(value);
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    } else if (aux == null ||
                                        aux.isAfter(max) ||
                                        aux.isBefore(min)) {
                                      return "Data inválida - dd/mm/yyyy";
                                    }
                                    return null;
                                  },
                                  obscure: false)),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.29,
                              child: _buildDropdown(
                                  context: context,
                                  fatorTela: 0.37,
                                  itens: <String>['F', 'M'],
                                  titulo: "Sexo",
                                  onChanged: (value) {
                                    setState(() {
                                      _sexoController = value;
                                    });
                                  },
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                    } else
                                      return null;
                                  },
                                  onSaved: (value) {
                                    _sexoController = value;
                                  }))
                        ],
                      ),
                      SizedBox(height: espacos * 2.5),
                      _buildRotulo("Dados de contato e informações para Login"),
                      _buildTextFormField(
                          texto: "E-mail",
                          onChanged: (value) {
                            _emailController = value;
                          },
                          controllerCampo: _emailController,
                          tipoTeclado: TextInputType.emailAddress,
                          validacao: (String value) {
                            if (value.isEmpty ||
                                value == null ||
                                !value.contains("@") ||
                                !value.contains(".")) {
                              return "Digite um e-mail válido";
                            }
                            return null;
                          },
                          obscure: false),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.47,
                            child: _buildTextFormField(
                                texto: "Senha",
                                onChanged: (value) {
                                  _senhaController = value;
                                },
                                controllerCampo: _senhaController,
                                tipoTeclado: TextInputType.text,
                                obscure: true,
                                validacao: (String value) {
                                  if (value.isEmpty ||
                                      value == null ||
                                      value.length < 6) {
                                    return "A senha precisa conter no mínimo 6 caracteres";
                                  }
                                  return null;
                                }),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.47,
                              child: _buildTextFormField(
                                  texto: "Celular",
                                  onChanged: (value) {
                                    _celularController = value;
                                  },
                                  controllerCampo: _celularController,
                                  mascara: [mascaraCelular],
                                  tipoTeclado: TextInputType.phone,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    } else if (value.length < 16) {
                                      return "Número inválido";
                                    }
                                    return null;
                                  },
                                  obscure: false))
                        ],
                      ),
                      SizedBox(height: espacos * 2.5),
                      _buildRotulo("Endereço"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.68,
                            child: _buildTextFormField(
                                texto: "Logradouro",
                                onChanged: (value) {
                                  _logradouroController = value;
                                },
                                controllerCampo: _logradouroController,
                                tipoTeclado: TextInputType.text,
                                validacao: (String value) {
                                  if (value.isEmpty || value == null) {
                                    return "Campo obrigatório";
                                  }
                                  return null;
                                },
                                obscure: false),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: _buildTextFormField(
                                  texto: "Nº",
                                  onChanged: (value) {
                                    _numeroController = value;
                                  },
                                  controllerCampo: _numeroController,
                                  tipoTeclado: TextInputType.number,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    }
                                    return null;
                                  },
                                  obscure: false))
                        ],
                      ),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: _buildTextFormField(
                                  texto: "Complemento",
                                  onChanged: (value) {
                                    _complementoController = value;
                                  },
                                  controllerCampo: _complementoController,
                                  tipoTeclado: TextInputType.text,
                                  onTap: null,
                                  validacao: (String value) {
                                    return null;
                                  },
                                  obscure: false)),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.43,
                              child: _buildTextFormField(
                                  texto: "Bairro",
                                  onChanged: (value) {
                                    _bairroController = value;
                                  },
                                  controllerCampo: _bairroController,
                                  tipoTeclado: TextInputType.text,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    }
                                    return null;
                                  },
                                  obscure: false))
                        ],
                      ),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width * 0.63,
                              child: _buildTextFormField(
                                  texto: "Cidade",
                                  onChanged: (value) {
                                    _cidadeController = value;
                                  },
                                  controllerCampo: _cidadeController,
                                  tipoTeclado: TextInputType.text,
                                  onTap: null,
                                  validacao: (String value) {
                                    if (value.isEmpty || value == null) {
                                      return "Campo obrigatório";
                                    }
                                    return null;
                                  },
                                  obscure: false)),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: _buildDropdown(
                                  context: context,
                                  fatorTela: 0.4,
                                  itens: <String>[
                                    'RJ',
                                    'AC',
                                    'AL',
                                    'AP',
                                    'AM',
                                    'BA',
                                    'CE',
                                    'DF',
                                    'ES',
                                    'GO',
                                    'MA',
                                    'MT',
                                    'MS',
                                    'MG',
                                    'PA',
                                    'PB',
                                    'PR',
                                    'PE',
                                    'PI',
                                    'RN',
                                    'RS',
                                    'RO',
                                    'RR',
                                    'SC',
                                    'SP',
                                    'SE',
                                    'TO'
                                  ],
                                  titulo: "UF",
                                  onChanged: (value) {
                                    setState(() {
                                      _estadoController = value;
                                    });
                                  },
                                  validacao: (String value) {
                                    if (value.isEmpty ||
                                        value == null ||
                                        value == "") {
                                      return "Campo obrigatório";
                                    } else
                                      return null;
                                  },
                                  onSaved: (value) {
                                    _estadoController = value;
                                  })),
                        ],
                      ),
                      SizedBox(height: espacos * 2.5),
                      RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            DateTime dataAux = DateFormat("dd/MM/yyyy")
                                .parse(_nascimentoController.text)
                                .add(Duration(hours: 3));
                            Timestamp tsAux = Timestamp.fromDate(dataAux);
                            Map<String, dynamic> dadosUsuario = {
                              "nome": _nomeController.text,
                              "email": _emailController.text.toLowerCase(),
                              "celular": _celularController.text,
                              "nascimento": tsAux,
                              "sexo": _sexoController,
                              "endereco": {
                                "bairro": _bairroController.text,
                                "cidade": _cidadeController.text,
                                "complemento": _complementoController.text,
                                "estado": _estadoController,
                                "logradouro": _logradouroController.text,
                                "numero": _numeroController.text
                              }
                            };

                            authRepo.criarUsuario(
                                dadosUsuario: dadosUsuario,
                                senha: _senhaController.text,
                                onSuccess: _onSuccess,
                                onFail: _onFail);

                            print("Validado corretamente");
                            print(_nomeController.text);
                          } else {
                            print("Erro de validação");
                            return null;
                          }
                        },
                        child: Text(
                          "CRIAR USUÁRIO",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        elevation: 5,
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                      )
                    ],
                  ),
                )),
          ),
        ));
  }

  void _onSuccess() {}

  void _onFail() {
    print("Erro ao criar usuário");
  }

  Container _buildDropdown(
      {@required BuildContext context,
      @required double fatorTela,
      @required List<String> itens,
      @required Function onChanged,
      @required Function onSaved,
      @required Function validacao,
      // @required TextEditingController controllerCampo,
      @required String titulo}) {
    return Container(
        width: MediaQuery.of(context).size.width * fatorTela,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: t1,
            brightness: Brightness.dark,
          ),
          child: DropdownButtonFormField<String>(
            items: itens.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(child: Text(value), value: value);
            }).toList(),
            onChanged: onChanged,
            validator: validacao,
            onSaved: onSaved,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
              labelText: titulo,
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width > 400 ? 12 : 10),
            ),
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
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width > 400 ? 12 : 10),
          )),
    );
  }

  _buildTextFormField(
      {@required String texto,
      Function onChanged,
      @required TextEditingController controllerCampo,
      @required Function validacao,
      @required TextInputType tipoTeclado,
      Function onTap,
      Function editado,
      List<TextInputFormatter> mascara,
      @required bool obscure}) {
    return TextFormField(
      controller: controllerCampo,
      inputFormatters: mascara,
      validator: validacao,
      onChanged: onChanged,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      onTap: onTap,
      onFieldSubmitted: editado,
      obscureText: obscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
        labelStyle: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width > 400 ? 12 : 10),
      ),
      keyboardType: tipoTeclado,
    );
  }
}
