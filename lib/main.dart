import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: CounterArea(),
    );
  }
}

class CounterArea extends StatefulWidget {
  @override
  _CounterAreaState createState() => _CounterAreaState();
}

class _CounterAreaState extends State<CounterArea> {
  int _counter = 0;

  void onCounterButtonPressed() {
    setState(() {

      ++_counter;
      // _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //เส้นตรงแนวดิ่ง
        children: [
          Text(
            'Total',
          ),
          Text(
              // _counter.toString(),
              '$_counter',
              style: TextStyle(fontSize: 60, color: Colors.blue)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: onCounterButtonPressed,
        child: Icon(
          Icons.plus_one,
        ),
      ),
    );
  }
}
