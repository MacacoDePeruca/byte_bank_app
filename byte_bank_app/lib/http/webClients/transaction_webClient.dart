import 'dart:convert';

import 'package:bytebankapp/http/webCliente.dart';
import 'package:bytebankapp/models/transaction.dart';
import 'package:http/http.dart';

class TransactionWebClient {

  Future<Transaction> save(Transaction transaction, String password) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response = await client.post(
      baseUrl,
      headers: {'content-type': 'application/json', 'password': password},
      body: transactionJson,
    );

    return Transaction.fromJson(jsonDecode(response.body));
  }

//  Map<String, dynamic> toMap(Transaction transaction) {
//    final Map<String, dynamic> transactionMap = {
//      'value' : transaction.value,
//      'contact' : {
//        'name' : transaction.contact.name,
//        'accountNumber' : transaction.contact.accountNumber
//      }
//    };
//    return transactionMap;
//  }

  Future<List<Transaction>> findAll() async {
    final Response response =
        await client.get(baseUrl).timeout(Duration(seconds: 5));

    final List<dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }
}
