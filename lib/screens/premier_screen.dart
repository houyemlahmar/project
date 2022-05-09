import 'package:flutter/material.dart';

import 'package:login/screens/SignIn_screen.dart';
import 'package:login/screens/admin/signin.dart';
import 'package:login/screens/technicien/signin.dart';

void main() => runApp(const premierScreen());

class premierScreen extends StatelessWidget {
  const premierScreen({Key? key}) : super(key: key);

  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Row(
                    children: <Widget>[
                      Container(
                        child: const Image(
                            image: AssetImage("assets/LOGO_TT.jpg")),
                        width: 100,
                        height: 150,
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 40, 130, 200),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text('Espace Client',
                            textAlign: TextAlign.center),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 40, 130, 200),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text('Admin', textAlign: TextAlign.center),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signinadmin()));
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 40, 130, 200),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text('Espace Technicien ',
                          textAlign: TextAlign.center),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signintechnicien()));
                      },
                    ),
                  ),
                ]))));
  }
}
