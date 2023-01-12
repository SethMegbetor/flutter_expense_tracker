import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "t1",
      title: "Suits",
      amount: 34.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Black Vans",
      amount: 94.99,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                child: Text(
                  // tx.amount.toString(),
                  "₵ ${tx.amount}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    // tx.date.toString(),
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
      // Card(
      //   color: Colors.red,
      //   child: Text("LIST OF TX"),
      // ),
    );
  }
}
