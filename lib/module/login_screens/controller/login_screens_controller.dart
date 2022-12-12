import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/login_screens_view.dart';

class LoginScreensController extends State<LoginScreensView> implements MvcController {
  static late LoginScreensController instance;
  late LoginScreensView view;

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