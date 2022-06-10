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
            backgroundColor: Colors.blue.shade50,
            body: Center(
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/font2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'Bienvenue chez Tunisie Télécom',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 17, 67, 107)),
                                ),
                              )),
                          const SizedBox(height: 60),
                          Container(
                            margin: const EdgeInsets.fromLTRB(60, 15, 60, 15),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 254, 74, 152),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  minimumSize: const Size.fromHeight(50),
                                ),
                                child: const Text('Espace Client',
                                    textAlign: TextAlign.center),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignInScreen()));
                                }),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(60, 15, 60, 15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 254, 74, 152),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                minimumSize: const Size.fromHeight(50),
                              ),
                              child: const Text('Admin',
                                  textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signinadmin()));
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(60, 15, 60, 15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 254, 74, 152),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                minimumSize: const Size.fromHeight(50),
                              ),
                              child: const Text('Espace Technicien ',
                                  textAlign: TextAlign.center),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            signintechnicien()));
                              },
                            ),
                          )
                        ])))));
  }
}
