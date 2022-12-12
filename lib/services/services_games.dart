import 'package:dio/dio.dart';

class ServiceGames {
  String baseUrl = "https://the-lazy-media-api.vercel.app/api/games/";
  String newsGame = "news/?page=1";
  String pcGame = "pc?page=1";

  Future<List> getDataGame() async {
    var response = await Dio().get(
      "$baseUrl$newsGame",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    List data = response.data;

    return data;
  }

  Future<List> getDataPcGame() async {
    var response = await Dio().get(
      "$baseUrl$pcGame",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    List data = response.data;

    return data;
  }
}
