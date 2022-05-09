import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/UserModel.dart';
import 'package:login/screens/menu-screen.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  Users loggedInUser = Users();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("Users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = Users.formMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TUNISIE TELECOM"),
        centerTitle: true,
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
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.indigo[50],
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Image.asset("assets/Bienvenue.jpg",
                      height: 300, width: 350, fit: BoxFit.fitWidth),
                  const SizedBox(height: 150),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  Text("$loggedInUser.firstname! $loggedInUser.secondname!",
                      style: const TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w500)),
                  Text("$loggedInUser.email!",
                      style: const TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MenuScreen()));
  }
}
