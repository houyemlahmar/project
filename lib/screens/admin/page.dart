import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/Home_screen.dart';
import 'package:login/screens/SignIn_screen.dart';
import 'package:login/screens/admin/G%C3%A9rertechnicien/g%C3%A9r%C3%A9rtechnicienView.dart';
import 'package:login/screens/admin/client.dart';
import 'package:login/screens/admin/signin.dart';
import 'package:login/screens/admin/technicien.dart';
import 'package:login/screens/demande_screen.dart';
import 'package:login/screens/message_screen.dart';
import 'package:login/screens/technicien/Menu.dart';

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _signOut;
    return Scaffold(
        appBar: AppBar(
          title: const Text('ADMINISTRATEUR'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => signinadmin()));
              },
              color: Colors.grey),
        ),
        backgroundColor: Colors.indigo[50],
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.indigo[50],
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(children: [
                  Image.asset("assets/download.jpg",
                      height: 250, width: 350, fit: BoxFit.fitWidth),
                  const SizedBox(height: 0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size.fromHeight(70),
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.list_alt,
                            color: Colors.pink,
                            size: 34,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Gérer technicien",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GerertechnicienView()));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size.fromHeight(70),
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.perm_contact_calendar_rounded,
                            color: Colors.pink,
                            size: 34,
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Text("Consulter client",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => consulterclient()));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size.fromHeight(70),
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.message,
                            color: Colors.pink,
                            size: 30,
                          ),
                          SizedBox(width: 3),
                          Text("Consulter statistique",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => messageScreen()));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          minimumSize: const Size.fromHeight(70),
                        ),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.logout_rounded,
                              color: Colors.pink,
                              size: 34,
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            Text("Déconnexion",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        }),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
