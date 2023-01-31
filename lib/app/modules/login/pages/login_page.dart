import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularproject/app/consts/app_strings.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'user name'),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'password'),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: const Size(130, 50)),
                onPressed: () => Modular.to.navigate(AppStrings.homeRoute),
                child: const Text("Login")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: const Size(130, 50)),
                onPressed: () => Modular.to.navigate(AppStrings.aboutRoute),
                child: const Text("Criar conta"))
          ],
        ),
      ),
    );
  }
}
