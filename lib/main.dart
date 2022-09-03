import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myText = "press to change";
  List<Color> myColors = [Colors.red, Colors.amber];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myText = "i've been changed";
                  myColors = [Colors.pink, Colors.black];
                });
              },
              child: Text("click me"),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Text(
                "${myText}",
                style: TextStyle(fontSize: 40),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: myColors),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
