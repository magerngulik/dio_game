import 'package:fhe_template/services/services_games.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/main_screens_view.dart';

class MainScreensController extends State<MainScreensView>
    implements MvcController {
  static late MainScreensController instance;
  late MainScreensView view;

  List data = [];
  List dataPcGame = [];
  bool loading = false;
  bool loadingPcGame = false;
  ServiceGames serviceGames = ServiceGames();
  int selectedIndex = 1;

  get chageIndex {
    if (selectedIndex == 1) {
      selectedIndex = 0;
    } else {
      selectedIndex = 1;
    }
    setState(() {});
  }

  getPcGame() async {
    loadingPcGame = true;
    setState(() {});
    dataPcGame = await serviceGames.getDataPcGame();
    loadingPcGame = false;
    print(dataPcGame);
    setState(() {});
  }

  getData() async {
    loading = true;
    setState(() {});
    data = await serviceGames.getDataGame();
    loading = false;
    print(data);
    setState(() {});
  }

  @override
  void initState() {
    instance = this;
    super.initState();
    getData();
    getPcGame();
    print(data);
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
