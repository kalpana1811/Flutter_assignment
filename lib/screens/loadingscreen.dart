import 'dart:async';

import 'package:flutter/material.dart';

class LOADINGSCREEN extends StatefulWidget {
  const LOADINGSCREEN({super.key});

  @override
  State<LOADINGSCREEN> createState() => _LOADINGSCREENState();
}

class _LOADINGSCREENState extends State<LOADINGSCREEN> {
  bool isFirstLoadingScreenShow = true;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      isFirstLoadingScreenShow = false;
      setState(() {});

      if (isFirstLoadingScreenShow == false) {
        Timer(const Duration(seconds: 3), () {
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (_) => const HOMEPAGE()));
          Navigator.pushReplacementNamed(context, '/home');
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return isFirstLoadingScreenShow
        ? SafeArea(
            child: Scaffold(
            backgroundColor: const Color.fromARGB(31, 18, 18, 18),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/amazon_music_logo_GIF.png"),
                  const CircularProgressIndicator(
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ))
        : SafeArea(
            child: Scaffold(
            backgroundColor: const Color.fromARGB(31, 18, 18, 18),
            body: Center(
              child: Image.asset("assets/image3.png"),
            ),
          ));
  }
}
