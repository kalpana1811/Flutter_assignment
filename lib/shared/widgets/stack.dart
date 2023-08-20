import 'package:flutter/material.dart';

class SongStack extends StatefulWidget {
  const SongStack({super.key});

  @override
  State<SongStack> createState() => _SongStackState();
}

class _SongStackState extends State<SongStack> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.4,
            color: Colors.amber,
            child: Image.asset("assets/album1.png"),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.4,
              color: Colors.blue,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "50 Most Played",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
