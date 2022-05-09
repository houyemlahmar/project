import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class consulterclient extends StatelessWidget {
  const consulterclient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _signOut;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Consulter Client'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
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
                      height: 300, width: 350, fit: BoxFit.contain),
                  const SizedBox(height: 0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
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
                            Icons.list_alt,
                            color: Colors.pink,
                            size: 34,
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Text("Ajouter",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
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
                            Icons.delete_forever_outlined,
                            color: Colors.pink,
                            size: 34,
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Text("Supprimer",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
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
                            Icons.move_down_sharp,
                            color: Colors.pink,
                            size: 34,
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Text("Modifier",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 10),
                ]),
              ),
            ),
          ),
        ));
  }
}
