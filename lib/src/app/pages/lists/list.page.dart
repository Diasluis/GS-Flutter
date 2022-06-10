import 'package:flutter/material.dart';
import 'package:flutter_checkpoint/src/app/components/card.dart';
import 'package:flutter_checkpoint/src/app/components/page.dart';

import '../../../utils/texts.dart';
import '../../components/button.dart';
import '../../components/textform.dart';
import 'controller.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController transactionNameController = TextEditingController();
  TextEditingController transactionValueController = TextEditingController();
  FocusNode transactionNameFocus = FocusNode();
  FocusNode transactionValueFocus = FocusNode();

  final transactionController = TransactionController();

  Future<void> _showDialog({String? listName, String? listValue}) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(listName!),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    transactionController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageBasic(
      pageTile: 'Extrato',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              title5,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            TextForm(
              focusNode: transactionNameFocus,
              userInputController: transactionNameController,
              label: 'Nome da Empresa',
              onEditingComplete: () {
                transactionValueFocus.nextFocus();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextForm(
              focusNode: transactionValueFocus,
              userInputController: transactionValueController,
              label: 'Valor da Passagem',
            ),
            const SizedBox(
              height: 5,
            ),
            Button(
                buttonText: 'Adicionar nova Transação',
                onPressed: () {
                  transactionController.addNewTransaction(
                      transactionName: transactionNameController.text,
                      transactionValue: transactionValueController.text);
                }),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
              shrinkWrap: true,
              itemCount: transactionController.transactionList.length,
              itemBuilder: ((context, index) {
                var transactionItem =
                    transactionController.transactionList[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      print(transactionItem.transactionName);
                    },
                    child: CardBasic(
                      leftText: transactionItem.transactionName,
                      rightText: 'R\$ ${transactionItem.transactionValue}',
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
