import 'package:flutter/material.dart';
import 'package:stock_app/second.dart';

import 'admval.dart';

void main() {
  runApp(const MyAppp());
}

class MyAppp extends StatelessWidget {
  const MyAppp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const hi(),
    );
  }
}

class hi extends StatefulWidget {
  const hi({Key? key}) : super(key: key);

  @override
  _hi createState() => _hi();
}

class _hi extends State<hi> {
  get scaffoldKey => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/op.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          key: scaffoldKey,
//      extendBodyBehindAppBar: true,
          extendBody: true,
          body: Container(
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
                      MaterialPageRoute(builder: (context) => const MyAppk()),
                    );
                  },
                  label: const Text('Click Here'),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Admin'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
