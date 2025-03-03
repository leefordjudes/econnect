import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreenProvider extends ChangeNotifier {
  String _date = '';

  String get date => _date;

  void currentDate() {
    _date = DateFormat('dd-MM-yyyy').format(DateTime.now());
    notifyListeners();
  }

  void updateDate(DateTime newDate) {
    _date = DateFormat('dd-MM-yyyy').format(newDate);
    notifyListeners();
  }
}
