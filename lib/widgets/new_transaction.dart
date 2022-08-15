import 'package:flutter/material.dart';
import './user_transaction.dart';

class NewTransaction extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
  final  Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              /*   onChanged: (value) {
                      titleInput = value;
                    }, */
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              /* onChanged: (value) => amountInput = value, */
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
               addTx(titleController.text, double.parse(amountController.text));
                /*   print(titleInput);
                      print(amountInput); */
              },
            )
          ],
        ),
      ),
    );
  }
}
