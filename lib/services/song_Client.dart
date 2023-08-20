import 'dart:convert';

import 'package:dio/dio.dart';

class SongClient {
  final Dio _dioclient = Dio();

  getSongsFromITunes(String singerName) async {
    try {
      String iTunesUrl =
          "https://itunes.apple.com/search?term=$singerName&limit=25";
      var response = await _dioclient.get(iTunesUrl);
      Map<String, dynamic> songsMap = jsonDecode(response.data);
      print("this is the response $response");
      print("this is the map resp $songsMap");
      return songsMap;
    } catch (error) {
      print("Some error has occured in Songs fetching $error");
    }
  }
}
