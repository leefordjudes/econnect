import 'package:econnect/ui/home/Dialog/company_dialog.dart';
import 'package:econnect/ui/home/Dialog/configuration_dialog.dart';
import 'package:econnect/ui/home/Dialog/date_picker_dialog.dart';
import 'package:econnect/ui/home/provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final date = Provider.of<HomeScreenProvider>(context).date;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => showDatePickerDialog(context),
                  icon: Icon(Icons.calendar_month),
                  iconSize: 18,
                ),
                Text(
                  "Date : $date",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => showConfigurationDialog(context),
                  iconSize: 18,
                  icon: Icon(Icons.settings),
                ),
                Text(
                  'BankAccount:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              spacing: 5,
              children: [
                Text(
                  'ABC',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 18,
                  onPressed: () => showCompanyDialog(context),
                  icon: Icon(Icons.account_balance),
                ),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Ready to send'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Sent to bank'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
