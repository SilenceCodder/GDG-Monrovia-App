import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as te;
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart' as intl;


Class schedule{
 
  scheduleNotifier(){
    DateTime dd = intl.DateFormat('h:mm a')
        .parse('9:39 PM'); 
   // final now = DateTime.now();
    await _flutterLocalNotificationsPlugin!.zonedSchedule(
        id,
        title,
        message,
        // tz.TZDateTime.from(
        //     now,
        //     tz.getLocation(
        //         AppDateTime().localTimeZone ?? 'America/Chicago')), //
        tz.TZDateTime.from(dd, tz.getLocation('America/Chicago'))
            .add(const Duration(seconds: 5)),
        // tz.TZDateTime.now(
        //     tz.getLocation('America/Chicago')), //AppDateTime().localTimeZone ??
        platformChannelSpecifics,
        androidAllowWhileIdle: true,
        payload: payload,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime);
  }
 
 //Try 2
 
  _zonedScheduler(
      {required int id,
      required String? title,
      required String? message,
      required NotificationDetails platformChannelSpecifics,
      String? payload = ''}) async {
  DateTime formattedDate = intl.DateFormat('E hh:mm')
              .parse('Mon 11:56');
    await _flutterLocalNotificationsPlugin!.zonedSchedule(
        id,
        title,
        message,
        _convertTime(
            formattedDate.hour, formattedDate.minute, formattedDate.weekday),
        platformChannelSpecifics,
        androidAllowWhileIdle: true,
        payload: payload,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime);
  }

  tz.TZDateTime _convertTime(int hour, int minutes, int day) {
    final tz.TZDateTime now = tz.TZDateTime.now(
        tz.getLocation(AppDateTime().localTimeZone ?? 'America/Chicago'));
    tz.TZDateTime scheduleDate = tz.TZDateTime(
      tz.getLocation(AppDateTime().localTimeZone ?? 'America/Chicago'),
      now.year,
      now.month,
      day,
      hour,
      minutes,
    );
    return scheduleDate;
  }
}
