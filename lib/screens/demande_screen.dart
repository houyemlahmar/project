import 'package:flutter/material.dart';
import 'package:login/screens/formulair_screen.dart';
import 'package:login/screens/menu-screen.dart';

class demandeScreen extends StatefulWidget {
  const demandeScreen({Key? key}) : super(key: key);

  @override
  _demandeScreenState createState() => _demandeScreenState();
}

class _demandeScreenState extends State<demandeScreen> {
  //our from key
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LISTE DES DEMANDES'),
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
          toolbarHeight: 90,
        ),
        backgroundColor: Colors.indigo[50],
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/font1.jpeg"), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 80, width: 70),
            Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 220,
                width: double.maxFinite,
                child: Card(
                  elevation: 5,
                )),
            const SizedBox(height: 100),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size.fromHeight(150),
                ),
                child: Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 16,
                    ),
                    Text("D??clarer une construction",
                        style: TextStyle(fontSize: 19, color: Colors.black)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => formulaire()));
                },
              ),
            ),
          ],
        ));
  }
}
