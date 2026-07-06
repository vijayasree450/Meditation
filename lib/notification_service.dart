// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// class NotificationService {
//   static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   static Future<void> initialize() async {
//     tz.initializeTimeZones();

//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     const InitializationSettings settings = InitializationSettings(
//       android: androidSettings,
//     );

//     await flutterLocalNotificationsPlugin.initialize(settings);

//     final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
//         flutterLocalNotificationsPlugin
//             .resolvePlatformSpecificImplementation<
//               AndroidFlutterLocalNotificationsPlugin
//             >();

//     if (androidImplementation != null) {
//       await androidImplementation.requestNotificationsPermission();
//       await androidImplementation.requestExactAlarmsPermission();
//     }
//   }

//   static Future<void> scheduleAlarm(int secondsLeft, String title) async {
//     await flutterLocalNotificationsPlugin.zonedSchedule(
//       0,
//       'Finished!',
//       '$title routine completed.',
//       tz.TZDateTime.now(tz.local).add(Duration(seconds: secondsLeft)),
//       const NotificationDetails(
//         android: AndroidNotificationDetails(
//           'meditation_alarm_channel_v5', // ചാനൽ ID v5 ആക്കി മാറ്റി (നിർബന്ധമാണ്)
//           'Meditation Alarms',
//           channelDescription: 'Rings when your meditation sessions finish',
//           importance: Importance.max,
//           priority: Priority.high,
//           playSound: true,
//           sound: RawResourceAndroidNotificationSound('dawn_of_the_sovereign'),
//           visibility: NotificationVisibility.public,
//           audioAttributesUsage:
//               AudioAttributesUsage.alarm, // അലാറം ആയി വർക്ക് ചെയ്യാൻ
//         ),
//         iOS: DarwinNotificationDetails(presentAlert: true, presentSound: true),
//       ),
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//     );
//   }

//   static Future<void> cancelAlarm() async {
//     await flutterLocalNotificationsPlugin.cancel(0);
//   }
// }

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    tz.initializeTimeZones();

    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(settings);

    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >();

    if (androidImplementation != null) {
      await androidImplementation.requestNotificationsPermission();
      await androidImplementation.requestExactAlarmsPermission();
    }
  }

  static Future<void> scheduleAlarm(int secondsLeft, String title) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Finished!',
      '$title routine completed.',
      tz.TZDateTime.now(tz.local).add(Duration(seconds: secondsLeft)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'meditation_alarm_channel_v12',
          'Meditation Alarms',
          channelDescription: 'Rings when your meditation sessions finish',
          importance: Importance.max,
          priority: Priority.max,
          playSound: true,
          sound: RawResourceAndroidNotificationSound('dawn_of_the_sovereign'),
          visibility: NotificationVisibility.public,
          audioAttributesUsage: AudioAttributesUsage.alarm,
          category: AndroidNotificationCategory.alarm,
          fullScreenIntent: true,

          ongoing: true,
          styleInformation: BigTextStyleInformation(''),
        ),
        iOS: DarwinNotificationDetails(presentAlert: true, presentSound: true),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  static Future<void> cancelAlarm() async {
    await flutterLocalNotificationsPlugin.cancel(0);
  }
}
