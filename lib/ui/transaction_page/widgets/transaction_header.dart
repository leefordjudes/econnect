import 'package:econnect/ui/transaction_page/widgets/checked_box.dart';
import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 36, child: CheckedBox()),
        SizedBox(width: 120, child: Text('Beneficary')),
        Flexible(flex: 1, fit: FlexFit.tight, child: Text('Particulars')),
        SizedBox(width: 160, child: Text('Ref no')),
        SizedBox(width: 80, child: Text('Mode')),
        SizedBox(width: 160, child: Text('VoucherNo')),
        SizedBox(width: 120, child: Text('Status')),
        SizedBox(width: 120, child: Text('Amount')),
      ],
    );
  }
}
