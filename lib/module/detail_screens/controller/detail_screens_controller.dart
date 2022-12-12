import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/detail_screens_view.dart';

class DetailScreensController extends State<DetailScreensView> implements MvcController {
  static late DetailScreensController instance;
  late DetailScreensView view;

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