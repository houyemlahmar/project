import 'package:flutter/material.dart';
import 'package:login/screens/menu-screen.dart';
import 'package:dart_crypto/dart_crypto.dart';

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
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 220,
                  width: double.maxFinite,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                            top: BorderSide(
                                color: Color.fromARGB(255, 240, 156, 156),
                                width: 2,
                                style: BorderStyle.solid),
                          )),
                        ),
                        SizedBox(
                          height: 110,
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ), // RoundedRectangleBorder
                            child: Text("Supprime",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
