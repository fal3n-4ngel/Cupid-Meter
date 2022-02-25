import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'globals.dart';

class reportui extends StatefulWidget {
  reportui({Key? key}) : super(key: key);

  @override
  State<reportui> createState() => _MyHomePage();
}

class _MyHomePage extends State<reportui> {
  double wid = 350;
  double hig = 580;
  @override
  String user = 'user';
  int _index = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(horizontal: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      wid = 370;
      hig = 580;
      print('dfs');
    } else if (Platform.isWindows) {
      wid = 1000;
      hig = 550;
    } else {
      wid = 1000;
      hig = 550;
    }
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      backgroundColor: const Color(0xffffffff),
      //
      //
      //
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: Text(''),
            ),
            //
            Container(
                padding: const EdgeInsets.all(10.0),
                width: wid,
                height: hig,
                decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(24.0)),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 52,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '',
                      style: TextStyle(
                          fontFamily: 'Now', fontSize: 4, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Cupid Meter\n',
                      style: TextStyle(
                          fontFamily: 'Now', fontSize: 21, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '''Cupid Meter is a simple Love Calculator App(Windows/Android/ios/web).
Created by fal3n-4ngel @ Cirus Lab \n
It is completely coded in Flutter without any external modules or plugins.

''',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 18,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '''
Contact Us.''',
                      style: TextStyle(
                          fontFamily: 'Now Bold',
                          fontSize: 31,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '''
''',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 11,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '''
Github : fal3n-4ngel / CIRUS-LAB
Instagram : cirus.lab
Website : https://cirus-lab.github.io/
''',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 21,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ])),
          ],
        ),
      ),
      //
      //
      //
      //
    );
  }
}
