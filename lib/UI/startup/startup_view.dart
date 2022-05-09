import 'package:flutter/material.dart';
import 'package:login/UI/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: model.doSomething,
        ),
        body: Center(
          child: Text(model.title),
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
