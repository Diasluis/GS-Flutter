import 'package:flutter/material.dart';

import '../../model/transaction_model.dart';

class TransactionController extends ChangeNotifier {
  List<TransactionModel> transactionList = [
    TransactionModel(transactionName: 'SpaceX', transactionValue: 256000000),
    TransactionModel(
        transactionName: 'Blue Origin', transactionValue: 130000000),
    TransactionModel(
        transactionName: 'Virgin Galactic', transactionValue: 2000000),
    TransactionModel(
        transactionName: 'Axiom Space', transactionValue: 55000000),
    TransactionModel(transactionName: 'RosCosmos', transactionValue: 200000000),
  ];

  addNewTransaction(
      {required String? transactionName, required String? transactionValue}) {
    transactionList.insert(
      0,
      TransactionModel(
          transactionName: transactionName,
          transactionValue: num.parse(transactionValue.toString())),
    );
    notifyListeners();
  }
}
