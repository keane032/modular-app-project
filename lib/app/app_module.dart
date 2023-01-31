import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularproject/app/consts/app_strings.dart';

import 'modules/about/about_module.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute(AppStrings.homeRoute, module: HomeModule()),
    ModuleRoute(AppStrings.aboutRoute, module: AboutModule()),
  ];
}
