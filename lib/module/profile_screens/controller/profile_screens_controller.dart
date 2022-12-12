import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/profile_screens_view.dart';

class ProfileScreensController extends State<ProfileScreensView> implements MvcController {
  static late ProfileScreensController instance;
  late ProfileScreensView view;

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