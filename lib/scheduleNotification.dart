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
}
