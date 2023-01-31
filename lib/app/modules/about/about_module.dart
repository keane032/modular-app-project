import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularproject/app/modules/about/about_page.dart';

class AboutModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const AboutPage()),
  ];
}
