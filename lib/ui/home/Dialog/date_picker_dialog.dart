import 'package:econnect/ui/home/provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> showDatePickerDialog(BuildContext context) async {
  DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  if (selectedDate != null) {
    Provider.of<HomeScreenProvider>(
      context,
      listen: false,
    ).updateDate(selectedDate);
  }
}
