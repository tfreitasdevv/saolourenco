import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../shared/auth/auth_repository.dart';
import '../../../shared/auth/local_user.dart';
import '../../../shared/constants/constants.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Editar Perfil"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final firebase = Firestore.instance;
  final localUser = Modular.get<LocalUser>();
  final authRepo = Modular.get<AuthRepository>();
  final TextInputFormatter mascaraCelular = MaskTextInputFormatter(
      mask: '(##) # ####-####', filter: {'#': RegExp(r'[0-9]')});

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _celularController = TextEditingController();
  TextEditingController _logradouroController = TextEditingController();
  TextEditingController _numeroController = TextEditingController();
  TextEditingController _complementoController = TextEditingController();
  TextEditingController _cidadeController = TextEditingController();
  TextEditingController _bairroController = TextEditingController();
  String estadoController;
  String nome;
  Timestamp nascimento;
  DateTime nascimentoData;
  String nascimentoFormatado;
  String sexo;
  String email;
  String senha;

  _recuperarDados() async {
    DocumentSnapshot snapshot = await Firestore.instance
        .collection('usuarios')
        .document(localUser.firebaseUser.uid)
        .get();

    Map<String, dynamic> dados = snapshot.data;
    _celularController.text = dados["celular"];
    _logradouroController.text = dados["endereco"]["logradouro"];
    _numeroController.text = dados["endereco"]["numero"];
    _complementoController.text = dados["endereco"]["complemento"];
    _bairroController.text = dados["endereco"]["bairro"];
    _cidadeController.text = dados["endereco"]["cidade"];
    estadoController = dados["endereco"]["estado"];
    nome = dados["nome"];
    nascimento = dados["nascimento"];
    nascimentoData = DateTime.parse(nascimento.toDate().toString());
    nascimentoFormatado = DateFormat("dd/MM/yyyy").format(nascimentoData);
    print(nascimentoData);
    sexo = dados["sexo"];
    email = dados["email"];
    senha = "********";
  }

  @override
  void initState() {
    super.initState();
    _recuperarDados();
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        senha = "********";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double espacos = MediaQuery.of(context).size.width > 400 ? 12 : 10;

    return Scaffold(
        key: _scaffoldKey,
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
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          nome == null ? "Nome: " : nome,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width > 400
                                  ? 18
                                  : 16),
                        ),
                      ),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.63,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                nascimentoData == null
                                    ? "Nascimento: "
                                    : "Nascimento: $nascimentoFormatado",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width > 400
                                            ? 18
                                            : 16),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.29,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                nascimentoData == null
                                    ? "Sexo: "
                                    : "Sexo: $sexo",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width > 400
                                            ? 18
                                            : 16),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: espacos * 2.5),
                      _buildRotulo("Dados de contato e informações para Login"),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          nome == null ? "E-mail: " : "E-mail: $email",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width > 400
                                  ? 18
                                  : 16),
                        ),
                      ),
                      SizedBox(height: espacos),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.47,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                nascimentoData == null
                                    ? "Senha: "
                                    : "Senha: $senha",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width > 400
                                            ? 18
                                            : 16),
                              ),
                            ),
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
                                      estadoController = value;
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
                                    estadoController = value;
                                  })),
                        ],
                      ),
                      SizedBox(height: espacos * 2.5),
                      Observer(builder: (_) {
                        if (localUser.isLoading)
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        return RaisedButton(
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              Map<String, dynamic> dadosUsuario = {
                                "celular": _celularController.text,
                                "endereco": {
                                  "logradouro":
                                      _logradouroController.text.trim(),
                                  "numero": _numeroController.text.trim(),
                                  "complemento":
                                      _complementoController.text.trim(),
                                  "bairro": _bairroController.text.trim(),
                                  "cidade": _cidadeController.text.trim(),
                                  "estado": estadoController
                                }
                              };
                              await authRepo
                                  .atualizarDadosUsuario(dadosUsuario);
                              _onSuccess();
                            } else {
                              _onFail();
                            }
                          },
                          child: Text(
                            "ATUALIZAR PERFIL",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          elevation: 5,
                          padding: EdgeInsets.symmetric(
                              horizontal: 18, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                        );
                      })
                    ],
                  ),
                )),
          ),
        ));
  }

  void _onSuccess() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Container(
        padding: EdgeInsets.all(18),
        child: Text(
          "Perfil atualizado com sucesso!",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.black,
      duration: Duration(seconds: 4),
    ));
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.of(context).pop();
      Navigator.of(context).pop();
    });
  }

  void _onFail() {
    String mensagemErro =
        "Confira os dados e tente novamente. Se o problema persisir, contate a secretaria.";

    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Container(
        padding: EdgeInsets.all(18),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Falha ao atualizar perfil",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                mensagemErro,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      duration: Duration(seconds: 5),
    ));
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
      {String texto,
      Function onChanged,
      TextEditingController controllerCampo,
      Function validacao,
      TextInputType tipoTeclado,
      Function onTap,
      Function editado,
      bool enabled,
      String valorInicial,
      List<TextInputFormatter> mascara,
      bool obscure}) {
    return TextFormField(
      enabled: enabled,
      controller: controllerCampo,
      inputFormatters: mascara,
      initialValue: valorInicial,
      validator: validacao,
      onChanged: onChanged,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      onTap: onTap,
      onFieldSubmitted: editado,
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
