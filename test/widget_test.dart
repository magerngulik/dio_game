// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:fhe_template/services/services_games.dart';

void main() async {
  ServiceGames service = ServiceGames();

  // var dataGame = service.getDataGame();

  print(await service.getDataGame());
}
