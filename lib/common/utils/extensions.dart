import 'package:intl/intl.dart';

extension DateFormatExt on int {
  String toFormattedDate() {
    final format = DateFormat('dd.MM.yyyy HH:mm');
    final date = DateTime.fromMillisecondsSinceEpoch(this);
    print(date);
    return format.format(date);
  }
}