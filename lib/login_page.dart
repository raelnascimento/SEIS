// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/Logo.png')),
            Container(
              height: 50,
              width: 370,
              child: Text('Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(220, 228, 128, 34)),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 20.0, bottom: 12.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email'),
                    ),
                    Container(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    ),
                    Container(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 228, 128, 34)),
                      onPressed: () {
                        if (email == 'joao@gmail.com' && password == '1234') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          print('errado');
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            'Entrar',
                            textAlign: TextAlign.center,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/cadastro1');
                      },
                      child: Container(
                        child: Text('Não possui Cadastro? Faça seu Cadastro'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/backgoudhome.png',
            fit: BoxFit.cover,
          ),
          // color: Color.fromARGB(255, 15, 66, 132),
        ),
        Container(color: Color.fromARGB(255, 15, 66, 132).withOpacity(0.4)),
        _body(),
      ],
    ));
  }
}
