import 'package:flutter/material.dart';

class TransactionFooter extends StatelessWidget {
  const TransactionFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('No of transactions : 0.0/0.0'),
        Text('Selected Total : 0.0/0.0'),
        Text('Total : 0.0/0.0'),
      ],
    );
  }
}
