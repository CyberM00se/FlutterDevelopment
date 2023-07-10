import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'my first flutter app!!',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Image.asset('assets/photo1.jpg')),
          Expanded(
            child: Container(
                color: Colors.purple,
                padding: EdgeInsets.all(20),
                child: Text('Inside Continer')),
          ),
          Expanded(
            child: Container(
                color: Colors.cyan,
                padding: EdgeInsets.all(20),
                child: Text('Inside Continer')),
          ),
          Expanded(
            child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(20),
                child: Text('Inside Continer')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.green[200],
      ),
    ));
  }
}
