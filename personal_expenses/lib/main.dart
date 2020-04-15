import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final List<Transaction> transactions = [
    Transaction(
      title: 'Books related shopping',
      date: DateTime.now(),
      amount: 69.99,
      id: '1',
    ),
    Transaction(
      title: 'Cloths related shopping',
      date: DateTime.now(),
      amount: 89.99,
      id: '2',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.menu),
        title: Text('Personal Expenses'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.add_circle_outline),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                TextField(
                  controller: amountController,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: RawMaterialButton(
                    onPressed: () {
                      transactions.add(
                        Transaction(
                          title: titleController.text,
                          date: DateTime.now(),
                          amount: double.parse(amountController.text),
                          id: '2',
                        ),
                      );
                    },
                    fillColor: Colors.purple,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
                children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        '\$ ${tx.amount}',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${tx.title}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '${tx.date}',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList()),
          ),
        ],
      ),
    );
  }
}
