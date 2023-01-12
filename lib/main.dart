// import 'models/transaction.dart'
import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

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
  // late String titleInput, amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("CHART"),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                    controller: titleController,
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Amount"),
                    controller: amountController,
                    // onChanged: (value) {
                    //   amountInput = value;
                    // },
                  ),
                  TextButton(
                    child: Text("Add Transaction"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      // backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      print(titleController.text);
                    },
                  )
                ],
              ),
            ),
          ),
          TransactionList()
        ],
      ),
    );
  }
}
