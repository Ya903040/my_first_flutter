import 'package:flutter/material.dart';
import 'package:test1/other/FirstPage.dart';
import 'package:test1/other/Game.dart';
import 'package:test1/other/LogIn.dart';
import 'package:test1/other/MyHomePage.dart';
import 'package:test1/other/SecondPage.dart';
import 'package:test1/other/ThirdPage.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Sen',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LogIn(),
        '/homepage': (context) => const MyHomePage(title: "title"),
        '/clicker': (context) =>
            const MyFirstPage(title: 'Flutter Demo Home Page'),
        '/silver_grid': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        '/game': (context) => const GameScreen(),
      },
    );
  }
}
