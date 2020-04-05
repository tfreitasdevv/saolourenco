import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/auth/auth_repository.dart';
import '../../shared/auth/local_user.dart';
import '../../shared/constants/constants.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final localUser = Modular.get<LocalUser>();
  final authRepo = Modular.get<AuthRepository>();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

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
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Theme(
                  data: Theme.of(context).copyWith(
                      primaryColor: Colors.white, hintColor: Colors.white),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width:
                            MediaQuery.of(context).size.width > 400 ? 70 : 60,
                        height:
                            MediaQuery.of(context).size.width > 400 ? 70 : 60,
                        child: Center(
                          child: Image.asset(iconeBranco),
                        ),
                      ),
                      SizedBox(height: espacos * 1.5),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          return null;
                        },
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width > 400
                                  ? 18
                                  : 16),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: espacos),
                      TextFormField(
                        controller: _senhaController,
                        validator: (value) {
                          return null;
                        },
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width > 400
                                  ? 18
                                  : 16),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      FlatButton(
                        onPressed: () {
                          if (_emailController.text.isEmpty ||
                              !_emailController.text.contains("@") ||
                              !_emailController.text.contains(".")) {
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Container(
                                padding: EdgeInsets.all(18),
                                child: Text(
                                  "Insira um e-mail válido para recuperação",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              backgroundColor: Colors.black,
                              duration: Duration(seconds: 4),
                            ));
                          } else {
                            authRepo.recuperarSenha(_emailController.text);
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Container(
                                padding: EdgeInsets.all(18),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        "E-MAIL DE RECUPERAÇÃO DE SENHA ENVIADO",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Confira seu e-mail informado e siga as instruções",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.black,
                              duration: Duration(seconds: 4),
                            ));
                          }
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "ESQUECI A SENHA",
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: espacos),
                      Observer(builder: (_) {
                        if (localUser.isLoading)
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        return RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              FirebaseAuth.instance.signOut();
                              authRepo.logar(
                                  email: _emailController.text.trim(),
                                  senha: _senhaController.text.trim(),
                                  onSuccess: _onSuccess,
                                  onFail: _onFail);
                            }
                          },
                          elevation: 6,
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 22),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          child: Text(
                            "Fazer login",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        );
                      }),
                      SizedBox(height: espacos * 2),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Caso ainda não possua cadastro, clique abaixo para se cadastrar",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: espacos),
                      RaisedButton(
                        // color: Colors.white,
                        onPressed: () {
                          Modular.to.pushReplacementNamed('/signup');
                        },
                        elevation: 6,
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 22),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: Text(
                          "Criar usuário",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void _onSuccess() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Container(
        padding: EdgeInsets.all(18),
        child: Text(
          "Login realizado com sucesso!",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.black,
      duration: Duration(seconds: 4),
    ));
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.of(context).pop();
    });
  }

  void _onFail() {
    String tipoErro = localUser.erroAoLogar;
    String mensagemErro = "*Falha no Login*";
    switch (tipoErro) {
      case "ERROR_USER_NOT_FOUND":
      case "auth/user-not-found":
        mensagemErro = "Usuário não encontrado";
        break;
      case "ERROR_WRONG_PASSWORD":
      case "auth/wrong-password":
        mensagemErro = "Senha incorreta";
        break;
      case "ERROR_USER_DISABLED":
      case "auth/user-disabled":
        mensagemErro =
            "Seu usuário se encontra inativo. Contate a secretaria da Paróquia";
        break;
      case "ERROR_INVALID_EMAIL":
      case "auth/invalid-email":
        mensagemErro = "Formato de e-mail inválido";
        break;
      default:
        mensagemErro = "Consulte o administrador do sistema";
        break;
    }
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Container(
        padding: EdgeInsets.all(18),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Falha no Login",
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
      duration: Duration(seconds: 4),
    ));
    print("Erro ao criar usuário");
    print(tipoErro);
  }
}
