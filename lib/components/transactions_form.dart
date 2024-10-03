// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final tittleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: tittleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    'Nova Transação',
                  ),
                  onPressed: () {
                    print(tittleController.text);
                    print(valueController.text);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
