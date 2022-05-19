import "package:flutter/material.dart";
import 'package:login/screens/admin/technicien/ajoutetechnicien.dart';

import "package:login/screens/admin/page.dart";

class GerertechnicienView extends StatefulWidget {
  const GerertechnicienView({Key? key}) : super(key: key);
  @override
  State<GerertechnicienView> createState() => _GerertechnicienViewState();
}

class _GerertechnicienViewState extends State<GerertechnicienView> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Liste Technies'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue.shade200,
          toolbarHeight: 60,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
              color: Colors.blue.shade200),
        ),

        backgroundColor: Colors.white,

        body: Center(
            child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                primary: Colors.blue.shade200),
            child: const Icon(
              Icons.add,
              size: 20,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ajoutertechnicien()));
            },
          ),
        )), // IconButton
        // AppBar
      );

  // Scaffold
}
