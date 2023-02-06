// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Cadastro3Page extends StatefulWidget {
  @override
  State<Cadastro3Page> createState() => _Cadastro3PageState();
}

class _Cadastro3PageState extends State<Cadastro3Page> {
  String ano = '';
  String pix = '';
  String password = '';
  String confPassword = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/images/Logo.png')),
                    Container(
                      height: 50,
                      width: 370,
                      child: Text('Cadastre-se',
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
                                ano = text;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Ano do Veiculo'),
                            ),
                            Container(
                              height: 10,
                            ),
                            TextField(
                              onChanged: (text) {
                                pix = text;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Chave Pix'),
                            ),
                            Container(
                              height: 10,
                            ),
                            TextField(
                              onChanged: (text) {
                                password = text;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password'),
                            ),
                            Container(
                              height: 10,
                            ),
                            TextField(
                              onChanged: (text) {
                                confPassword = text;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Confirmar Password'),
                            ),
                            Container(
                              height: 15,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 228, 128, 34)),
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed('/');
                              },
                              child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'Cadastrar',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20.0),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
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
