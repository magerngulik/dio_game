import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import '../controller/splash_screens_controller.dart';

class SplashScreensView extends StatefulWidget {
  const SplashScreensView({Key? key}) : super(key: key);

  Widget build(context, SplashScreensController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SplashScreens"),
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
  State<SplashScreensView> createState() => SplashScreensController();
}