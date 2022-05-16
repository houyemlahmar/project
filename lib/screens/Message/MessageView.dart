import 'package:flutter/material.dart';
import 'package:login/screens/Message/MessageViewModel.dart';
import 'package:login/screens/menu-screen.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  get body => null;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MessageViewModel>.reactive(
      onModelReady: (model) => model.Getmessage(),
      builder: (context, model, child) => Scaffold(
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

                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 239, 154, 154),
                            width: 2),
                      ), // RoundedRectangleBorder
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(),
                            ),
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
                          Icon(
                            Icons.notification_add,
                            color: Colors.red[200],
                            size: 20,
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
      ),
      viewModelBuilder: () => MessageViewModel(),
    );
  }
}
