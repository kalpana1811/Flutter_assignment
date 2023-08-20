import 'package:flutter/material.dart';
import 'package:spotify_app/shared/widgets/stack.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.notifications),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Chip(label: Text("MUSIC")),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            const Chip(label: Text("PODCAST"))
          ],
        ),
        centerTitle: true,
        actions: const [Icon(Icons.settings)],
      ),
      body: Column(
        children: [
          const Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Playlists",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Spacer(),
              Chip(label: Text("SEE MORE"))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                SongStack(),
                SongStack(),
                SongStack(),
                SongStack(),
                SongStack(),
                SongStack(),
                SongStack(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
