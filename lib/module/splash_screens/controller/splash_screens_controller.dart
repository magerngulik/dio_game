import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/splash_screens_view.dart';

class SplashScreensController extends State<SplashScreensView> implements MvcController {
  static late SplashScreensController instance;
  late SplashScreensView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}