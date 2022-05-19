import 'package:flutter/material.dart';
import 'package:login/screens/home/Homeviewmodel.dart';
import 'package:login/screens/menu-screen.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (model) => model.GetUser(),
      builder: (context, model, child) => Scaffold(
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
                    Text(
                        "${model.loggedInUser.firstname}! ${model.loggedInUser.lastname}!",
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500)),
                    Text("${model.loggedInUser.email}!",
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
