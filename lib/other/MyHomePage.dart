import 'package:flutter/material.dart';
import 'package:test1/other/NavBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageFirstStage();
}

class _MyHomePageFirstStage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'who are you ? warrior',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            Text(
              'Frank ?',
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.exit_to_app_rounded),
      ),
    );
  }
}
