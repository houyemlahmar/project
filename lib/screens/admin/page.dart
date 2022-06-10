import 'package:flutter/material.dart';

import 'package:login/screens/SignIn_screen.dart';
import 'package:login/screens/admin/technicien/gerertechnicienView.dart';

import 'package:login/screens/admin//client/clientView.dart';
import 'package:login/screens/admin/signin.dart';

class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _signOut;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Admin',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue[300],
          toolbarHeight: 60,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => signinadmin()));
              },
              color: Colors.white),
        ),
        backgroundColor: Colors.indigo[50],
        body: ListView(children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.indigo[50],
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(children: [
                  Image.asset("assets/TELECOM1.jpg",
                      height: 250, width: 350, fit: BoxFit.fitWidth),
                  const SizedBox(height: 10),
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
                          Text("Gérer techniciens",
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
                  const SizedBox(height: 20),
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
                          Text("Consulter clients",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => consulterclientView()));
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
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
        ]));
  }
}
