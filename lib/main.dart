import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: "t1", title: "Suits", amount: 34.99, date: DateTime.now()),
    Transaction(id: "t2", title: "Black Vans", amount: 94.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              color: Colors.blue,
              child: Text("CHART"),
              elevation: 5,
            ),
          ),
          Card(
            color: Colors.red,
            child: Text("LIST OF TX"),
          )
        ],
      ),
    );
  }
}
