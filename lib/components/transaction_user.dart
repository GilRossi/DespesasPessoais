import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'transactions_form.dart';
import 'transactions_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Maracugina para ver o Corinthians',
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: '10 Pasteis pelo ifood',
      value: 105.24,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: '#01',
      value: 105.24,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: '#02',
      value: 105.24,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: '#05',
      value: 105.24,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: '#06',
      value: 105.24,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: '#07',
      value: 105.24,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
