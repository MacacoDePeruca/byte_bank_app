import 'package:bytebankapp/components/transaction_auth_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(ByteBankApp());
  //save(Transaction(10,Contact(9,'jezi',8888))).then((transacion) => print(transacion)) ;
  //findAll().then((transactions) => print('new transactions : $transactions') );

//  save(Contact(0, 'alex', 1000)).then((id){
//    findAll().then((contacts) => debugPrint(contacts.toString()));
//  });
}

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        ),
      ),
      home: Dashboard()
    );
  }
}

