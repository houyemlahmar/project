import 'package:flutter/material.dart';
import 'package:login/screens/menu-screen.dart';

class messageScreen extends StatefulWidget {
  const messageScreen({Key? key}) : super(key: key);

  @override
  State<messageScreen> createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LISTE DES MESSAGES'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuScreen()));
              },
              color: Colors.grey),
          toolbarHeight: 100,
        ),
        backgroundColor: Colors.indigo[50],
        body: Stack(children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/font1.jpeg"), fit: BoxFit.cover),
            ),
          )
        ]));
  }
}
