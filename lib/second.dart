import 'package:flutter/material.dart';

import 'package:stock_app/usca.dart';
import 'admval.dart';
import "validation.dart";

void main() => runApp(const MyAppk());

class MyAppk extends StatelessWidget {
  const MyAppk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ero Batteries',

      // to hide debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonsExample(),
    );
  }
}

// list all the buttons
class ButtonsExample extends StatelessWidget {
  // const ButtonsExample ({Key ?key}) : super(key:key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  ButtonsExample({Key? key}) : super(key: key);

  // ignore: avoid_print

// assign actions to
// all the listed buttons
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/se.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Ero Batteries'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(),
              SizedBox(
                height: 100,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                label: const Text('Dealer'),
              ),
              SizedBox(
                height: 50,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyAnn()),
                  );
                },
                label: const Text('User'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
