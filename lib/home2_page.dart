// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home2Page extends StatefulWidget {
  @override
  State<Home2Page> createState() {
    return Home2PageState();
  }
}

class Home2PageState extends State<Home2Page> {
  Widget _body() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 370,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Text(
                    'Jacarei - São Paulo',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Container(height: 20),
                  Text('Destinatario: Larissa de Oliveira',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                  Text('Tamanho: 500cm x 101cm x 323cm',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                  Container(height: 20),
                  Text('Local de Partida:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                  Text('Ponto de Coleta 4 - Av. Carlos Alberto, 15 - Jacarei'),
                  Text('Local de Retirada:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                  Text('Ponto de Coleta 1 - R. São Jose, 12 - São Paulo'),
                  Container(height: 20),
                  Row(
                    children: [
                      Text('Valor da Corrida:              ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 25.0,
                          )),
                      Text('RS19,45',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 208, 225, 245)),
          ),
          Container(
            height: 50,
          ),
          Container(
            height: 50,
            width: 370,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Aceita o Pedido?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  )),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(220, 138, 192, 218)),
          ),
          Container(height: 40),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 148, 36, 28)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.close,
                          size: 40.0,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 14, 128, 20)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/atividades');
                    },
                    child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.check,
                          size: 40,
                        ))),
              ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset('assets/images/user.png'),
                  ),
                  accountName: Text('João Franciso'),
                  accountEmail: Text('joao@gmail.com')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text('Lista de Atividades'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/atividades');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                  Colors.blue,
                  Color.fromARGB(255, 228, 128, 34)
                ]))),
            _body(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.library_books),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/atividades');
            }));
  }
}
