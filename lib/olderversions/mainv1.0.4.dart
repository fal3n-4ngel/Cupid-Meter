import 'package:flutter/material.dart';
import 'code.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Love Calculator';
  static const String res = '0';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String res = '0';

  @override
  Widget build(BuildContext context) {
    AssetImage BgAsset = AssetImage("image\\2.jpg");
    Image image = Image(image: BgAsset, width: 150, height: 150);
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 0),
              child: image,
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 30, right: 0),
                child: const Text(
                  'LOVE CALCULATOR',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 40),
                )),
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
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 40),
                )),
          ],
        ));
  }
}
