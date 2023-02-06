import 'package:flutter/material.dart';

import 'atividades_page.dart';
import 'cadastro1_page.dart';
import 'cadastro2_page.dart';
import 'cadastro3_page.dart';
import 'home2_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/cadastro1': (context) => Cadastro1Page(),
        '/cadastro2': (context) => Cadastro2Page(),
        '/cadastro3': (context) => Cadastro3Page(),
        '/home': (context) => HomePage(),
        '/atividades': (context) => AtividadesPage(),
        '/home2': (context) => Home2Page(),
      },
    );
  }
}
