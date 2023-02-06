// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AtividadesPage extends StatefulWidget {
  @override
  State<AtividadesPage> createState() {
    return AtividadesPageState();
  }
}

class AtividadesPageState extends State<AtividadesPage> {
  Widget _body() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 370,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Text(
                    'Cód. Rastreio: XDA45S',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Destinatario: João Pedro de Oliveira',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Tamanho: 30cm x 11cm x 23cm',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Destino: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10.0,
                      )),
                  Text(
                      'Ponto de Coleta 17 - Av. José Carlos, 6 - Rio de Janeiro',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 208, 225, 245)),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 100,
            width: 370,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Text(
                    'Cód. Rastreio: JJ55G',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Destinatario: Marcos Gabriel de Souza',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Tamanho: 300cm x 5cm x 40cm',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Destino: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10.0,
                      )),
                  Text('Ponto de Coleta 5 - R. Miguel Fonseca, 60 - Jacarei',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 208, 225, 245)),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 100,
            width: 370,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Text(
                    'Cód. Rastreio: LO33S2',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Destinatario: Leticia do Nascimento',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Tamanho: 17cm x 10cm x 23cm',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Destino: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10.0,
                      )),
                  Text('Ponto de Coleta 50 - Av. Brasil, 586 - Caçapava',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 208, 225, 245)),
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 100,
            width: 370,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Text(
                    'Cód. Rastreio: TT56SR',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Destinatario: Julia Maria dos Santos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Tamanho: 250cm x 110cm x 523cm',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                  Text('Destino: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10.0,
                      )),
                  Text('Ponto de Coleta 1 - Av. Paulista, 6 - São Paulo',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                      )),
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 208, 225, 245)),
          ),
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
          title: Text('Lista de Atividades'),
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
            child: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home2');
            }));
  }
}
