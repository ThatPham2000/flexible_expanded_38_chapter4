import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: Text('alo1okok'),
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          Expanded(
            flex: 2,
            // fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: Text('alo2'),
              decoration: BoxDecoration(color: Colors.green),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: Text('alo3'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
