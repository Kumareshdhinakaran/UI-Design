import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [];

  void _addNewTransactions(String txTitle, double txAmount) {
    setState(() {
      Transaction _transaction = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
      );
      _transactions.add(_transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransactions),
        TransactionList(_transactions),
      ],
    );
  }
}
