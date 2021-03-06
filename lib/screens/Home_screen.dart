import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:login/Model/UserModel.dart';
import 'package:login/screens/utils/Controllerprofil.dart';
import 'package:stacked_services/stacked_services.dart';

class profilScreen extends StatefulWidget {
  const profilScreen({Key? key}) : super(key: key);

  @override
  State<profilScreen> createState() => _profilScreenState();
}

class _profilScreenState extends State<profilScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

    var model;
    var name;
    var adresse;
    Get.put(ProfileController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          centerTitle: true,
          backgroundColor: Colors.grey[350],
        ),
        backgroundColor: Colors.grey[200],
        body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Stack(children: [
              Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  )),
              Positioned(
                  top: 40,
                  left: MediaQuery.of(context).size.width * 0.5 - 69,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(60)),
                            child: Image.asset(
                                "assets/2048px-Circle-icons-profile.svg.png",
                                height: 100,
                                width: 100,
                                fit: BoxFit.contain),
                          ),
                        )
                      ])),
              Positioned(
                top: 100,
                left: MediaQuery.of(context).size.width * 0.5,
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[350],
                    ), // BoxDecoration
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                            child: Container(
                                decoration: BoxDecoration(), // BoxDecoration
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                ))),

                        SizedBox(
                          height: 60,
                        ), // SizedBox
                        Padding(
                          padding: const EdgeInsets.only(right: 120.0),
                          child: Text("Nome et Pr??nom"),
                        ),
                        Obx(
                          () => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: TextFormField(
                                  readOnly:
                                      ProfileController.instance.isEdit.value,
                                  initialValue: name,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      prefixIcon: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                          Icons.person_outline,
                                          color: Colors.blueGrey,
                                        ), // Icon
                                      ), // Contalner
                                      // InputDecoration

                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            ProfileController.instance
                                                .toggleedit();
                                          },
                                          child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Icon(Icons.edit_outlined,
                                                  color: Colors.blueGrey)))))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 170.0),
                          child: Text("Email"),
                        ),

                        Obx(
                          () => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: TextFormField(
                                  readOnly:
                                      ProfileController.instance.isEdit.value,
                                  initialValue: name,
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      prefixIcon: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                          Icons.email_outlined,
                                          color: Colors.blueGrey,
                                        ), // Icon
                                      ), // Contalner
                                      // InputDecoration

                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            ProfileController.instance
                                                .toggleedit();
                                          },
                                          child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Icon(Icons.edit_outlined,
                                                  color: Colors.blueGrey)))))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90.0),
                          child: Text("Numero T??l??phone"),
                        ),

                        Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    prefixIcon: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: const Icon(
                                        Icons.phone,
                                        color: Colors.blueGrey,
                                      ), // Icon
                                    ), // Contalner
                                    // InputDecoration

                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          ProfileController.instance
                                              .toggleedit();
                                        },
                                        child: const Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Icon(Icons.edit_outlined,
                                                color: Colors.blueGrey)))))),

                        Padding(
                          padding: const EdgeInsets.only(right: 150.0),
                          child: Text("Adresse"),
                        ),

                        Obx(
                          () => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: TextFormField(
                                  readOnly:
                                      ProfileController.instance.isEdit.value,
                                  initialValue: adresse,
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      prefixIcon: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                          Icons.home,
                                          color: Colors.blueGrey,
                                        ), // Icon
                                      ), // Contalner
                                      // InputDecoration

                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            ProfileController.instance
                                                .toggleedit();
                                          },
                                          child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Icon(Icons.edit_outlined,
                                                  color: Colors.blueGrey)))))),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.data_saver_on,
                              color: Colors.blueGrey,
                              size: 20,
                            ),
                            label: Text(
                              (''),
                              style: TextStyle(
                                color: Color.fromARGB(255, 16, 15, 15),
                              ),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(
                                            color: Colors.blueGrey))))),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),

                        const Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text(
                            ("Tunisie T??l??com khzama"),
                            strutStyle: StrutStyle(
                              fontSize: 30,
                            ),
                          ),
                        ), // Padding
                        const ListTile(
                          leading: Icon(
                            Icons.phone,
                            size: 16,
                            color: Colors.blueGrey,
                          ),
                          title: Text('1200  Service renseignement'),
                        ),
                        const ListTile(
                          leading: Icon(
                            Icons.supervisor_account_outlined,
                            size: 16,
                            color: Colors.blueGrey,
                          ),
                          title: Text('1298  Service Client'),
                        ),
                      ]),
                ),
              )
            ])));
  }
}
