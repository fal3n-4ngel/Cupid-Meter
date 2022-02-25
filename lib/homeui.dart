import 'package:flutter/material.dart';
import 'code.dart';
import 'dart:io' show Platform;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  double wid = 350;
  double hig = 580;

  String res = '0';
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  double progress = 0;
  currentProgressColor() {
    if (progress >= 0.6 && progress < 0.8) {
      return Colors.orange;
    }
    if (progress >= 0.8) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

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
    print(wid);
    AssetImage BgAsset = AssetImage("image\\2.jpg");
    Image image = Image(image: BgAsset, width: 100, height: 100);
    return Scaffold(
      appBar: AppBar(title: const Text('Cupid Meter')),
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
              child: Text(
                '',
                style: TextStyle(
                    fontFamily: 'Arial', fontSize: 10, color: Colors.black),
                textAlign: TextAlign.right,
              ),
            ),
            //
            Container(
                padding: const EdgeInsets.all(0.0),
                width: wid,
                height: hig,
                decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(24.0)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '\n CUPID METER',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 30,
                          color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      '',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 10,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      ' Cirus Lab ',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 18,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 0),
                    child: image,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 750.0,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name 1',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 750.0,
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name 2',
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      margin: EdgeInsets.all(10),
                      padding: const EdgeInsets.only(right: 50, left: 50),
                      child: ElevatedButton(
                        child: const Text('Calculate'),
                        onPressed: () {
                          setState(() {
                            res = lcalc(
                                nameController.text, passwordController.text);
                          });
                        },
                      )),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        res,
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w500,
                            fontSize: 40),
                      )),
                ])),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: Text(''),
            ),

            //
            //
            //
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
