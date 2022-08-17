import 'package:flutter/material.dart';
//import './user_transaction.dart';

class NewTransaction extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx); 

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmt = double.parse(amountController.text);

   /*  if (enteredTitle.isEmpty || enteredAmt <= 0) {
      return;
    } */

    addTx(enteredTitle, enteredAmt);
  }

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
              onSubmitted: (_) =>
                  submitData(), //underscore in parameter because we are not using it in fxn , just bexoz if we will not give it flutter will give us error.
            ),
            
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              /* onChanged: (value) => amountInput = value, */
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) =>
                  submitData(), //underscore in parameter because we are not using it in fxn , just bexoz if we will not give it flutter will give us error.
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed:submitData ,
            )
          ],
        ),
      ),
    );
  }
}
