import 'package:flutter/material.dart';
import 'package:personal_expense/models/transaction.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 80, dateTime: DateTime.now()),
    Transaction(
        id: 't2', title: 'Clothes', amount: 120, dateTime: DateTime.now())
  ];
  void _addNewTransaction({required String title, required double amount}) {
    final newTx = Transaction(
        title: title,
        amount: amount,
        dateTime: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
