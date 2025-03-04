import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy-MM-dd');
final timeFormatter = DateFormat('HH:mm:ss');
final DateTime now = DateTime.now();
final formattedDate = dateFormatter.format(now);
final formattedTime = timeFormatter.format(now);
final currentDay = now.day;
