import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularproject/app/modules/login/pages/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const LoginPage()),
  ];
}
