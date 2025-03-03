import 'package:flutter/material.dart';

class HomeScreenField extends StatelessWidget {
  const HomeScreenField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(),
        Expanded(child: Container()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('No of transactions : '),
            Text('Selected Total : '),
            Text('Total : '),
          ],
        ),
      ],
    );
  }
}
