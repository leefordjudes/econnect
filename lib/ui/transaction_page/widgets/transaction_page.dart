import 'package:econnect/ui/transaction_page/widgets/transaction_footer.dart';
import 'package:econnect/ui/transaction_page/widgets/transaction_header.dart';
import 'package:econnect/ui/transaction_page/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          TransactionHeader(),
          Expanded(child: TransactionList()),
          TransactionFooter(),
        ],
      ),
    );
  }
}
