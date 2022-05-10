import 'package:flutter/material.dart';
import 'package:login/screens/Message/MessageViewModel.dart';
import 'package:login/screens/menu-screen.dart';
import 'package:stacked/stacked.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

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
          body: Stack(children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/font1.jpeg"), fit: BoxFit.cover),
              ),
            )
          ])),
      viewModelBuilder: () => MessageViewModel(),
    );
  }
}
