import 'package:flutter/material.dart';
import 'package:lcalcu/mainsub.dart';
import 'code.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContextcontext) {
    return MaterialApp(
      title: 'Love Calculation!',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("image\\1.jpg"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text("Love Calculation!")),
          body: const MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => AppPage();
}

class AppPage extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String res = '0';
  Widget build(BuildContext context) {
    AssetImage BgAsset = AssetImage("image\\2.jpg");
    Image image = Image(image: BgAsset, width: 150, height: 150);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 0),
            child: const Text('Love Calculator',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 40)),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 0),
            child: image,
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: const Text(
                'CIRUS LAB',
                style: TextStyle(fontSize: 15),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    res = lcalc(nameController.text, passwordController.text);
                  });
                },
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                '$res',
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w500,
                    fontSize: 40),
              )),
        ],
      ),
    );
  }
}
