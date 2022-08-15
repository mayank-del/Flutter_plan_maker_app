import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

//import 'models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


/*   String titleInput='';
  String amountInput='';
 */


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mayank"),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart!'),
                elevation: 5,
              )),
              UserTransaction(),
        ],
      ),
    );
  }
}
