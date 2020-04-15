import 'package:flutter/foundation.dart';

class Transaction {
  String title;
  double amount;
  String id;
  DateTime date;

  Transaction({
    @required this.title,
    @required this.date,
    @required this.amount,
    @required this.id,
  });
}
