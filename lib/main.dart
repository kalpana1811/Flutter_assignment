import 'package:flutter/material.dart';
import 'package:spotify_app/screens/home.dart';
import 'package:spotify_app/screens/homepage.dart';
import 'package:spotify_app/screens/loadingscreen.dart';

void main() {
  runApp(MaterialApp(
    // home: LOADINGSCREEN(),
    // theme: ThemeData.dark(),
    initialRoute: '/',
    routes: {
      '/': (context) => const LOADINGSCREEN(),
      '/home': (context) => const HOMEPAGE(),
      '/home2': (context) => const HomePage2(),
    },
  ));
}
