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
      body: Wrap(
        children: <Widget>[
          Container(
              color: Colors.blue,
              width: 150,
              height: 150,
              child: const Center(
                  child: Text(
                "who",
                textScaleFactor: 2.5,
              ))),
          Container(
              color: Colors.red,
              width: 150,
              height: 150,
              child: const Center(
                  child: Text(
                "are",
                textScaleFactor: 2.5,
              ))),
          Container(
              color: Colors.teal,
              width: 150,
              height: 150,
              child: const Center(
                  child: Text(
                "you",
                textScaleFactor: 2.5,
              ))),
          Container(
              color: Colors.indigo,
              width: 150,
              height: 150,
              child: const Center(
                  child: Text(
                "?",
                textScaleFactor: 2.5,
              ))),
          Container(
              color: Colors.orange,
              width: 150,
              height: 150,
              child: const Center(
                  child: Text(
                "warrior",
                textScaleFactor: 2.5,
              ))),
          Container(
              color: Colors.lightGreen,
              width: 150,
              height: 150,
              child: const Center(
                  child: Text(
                    "Frank?",
                    textScaleFactor: 2.5,
                  ))),



        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.exit_to_app_rounded, size: 50),
      ),
/*
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
*/
    );
  }
}
