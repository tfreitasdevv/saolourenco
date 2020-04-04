import 'package:paroquia_sao_lourenco/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:paroquia_sao_lourenco/app/app_widget.dart';
import 'package:paroquia_sao_lourenco/app/modules/home/home_module.dart';
import 'package:paroquia_sao_lourenco/app/modules/login/login_controller.dart';
import 'package:paroquia_sao_lourenco/app/modules/login/signup_page.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/auth_repository.dart';
import 'package:paroquia_sao_lourenco/app/shared/auth/local_user.dart';

import 'modules/login/login_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => LoginController()),
        Bind((i) => AuthRepository()),
        Bind((i) => LocalUser()),
      ];

  @override
  List<Router> get routers => [
        // Router('/', child: (_, args) => SplashPage()),
        // Router('/home', module: HomeModule()),
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/signup', child: (_, args) => SignupPage()),
        Router('/login', child: (_, args) => LoginPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
