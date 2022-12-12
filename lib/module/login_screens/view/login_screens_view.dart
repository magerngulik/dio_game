import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/login_screens_controller.dart';

class LoginScreensView extends StatefulWidget {
  const LoginScreensView({Key? key}) : super(key: key);

  Widget build(context, LoginScreensController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginScreens"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginScreensView> createState() => LoginScreensController();
}