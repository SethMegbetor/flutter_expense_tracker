// import 'package:flutter/material.dart';
// import './new_transaction.dart';
// import './transaction_list.dart';
// import '../models/transaction.dart';

// class UserTransactions extends StatefulWidget {
//   const UserTransactions({super.key});

//   @override
//   State<UserTransactions> createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   // final List<Transaction> _userTransactions = [
//   //   Transaction(
//   //     id: "t1",
//   //     title: "Suits",
//   //     amount: 34.99,
//   //     date: DateTime.now(),
//   //   ),
//   //   Transaction(
//   //     id: "t2",
//   //     title: "Black Vans",
//   //     amount: 94.99,
//   //     date: DateTime.now(),
//   //   ),
//   // ];

//   // void _addNewTransaction(String txTitle, double txAmount) {
//   //   final newTx = Transaction(
//   //     id: DateTime.now().toString(),
//   //     title: txTitle,
//   //     amount: txAmount,
//   //     date: DateTime.now(),
//   //   );

//   //   setState(() {
//   //     _userTransactions.add(newTx);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         NewTransaction(_addNewTransaction),
//         // TransactionList(_userTransactions),
//       ],
//     );
//   }
// }
