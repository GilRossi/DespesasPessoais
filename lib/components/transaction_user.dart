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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}
