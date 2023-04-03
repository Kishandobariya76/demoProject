import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

String getText(String key) {
  return key.tr();
}

String networkText(String text) {
  return text;
}

Future<DateTime> selectDate(BuildContext context, DateTime initialDate) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: initialDate,
    initialDatePickerMode: DatePickerMode.day,
    firstDate: DateTime.now(),
    lastDate: DateTime(initialDate.year, initialDate.month, initialDate.day + 6),
  );

  if (picked != null) {
    return picked;
  }

  return DateTime.now();
}
