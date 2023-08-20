class songsModel {
  late String artistName;
  late String trackName;
  late String artworkUrl100;
  late String previewUrl;
  bool isPlaying = false;

  songsModel(
      {required this.artistName,
      required this.trackName,
      required this.artworkUrl100,
      required this.previewUrl});

  songsModel.fromJSON(Map<String, dynamic> jsonMap) {
    artistName = jsonMap['artistName'] ?? "not avl";
    trackName = jsonMap['trackName'] ?? "not avl";
    artworkUrl100 = jsonMap['artworkUrl100'] ?? "not avl";
    previewUrl = jsonMap['previewUrl'] ?? "not avl";
  }
}
