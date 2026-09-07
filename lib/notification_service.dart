import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static const String channelId = 'meditation_alarm_channel_v16';
  static const String channelName = 'Meditation Alarms';
  static const String channelDescription =
      'Rings loud alarm even when the screen is turned off or locked';

  static Future<void> initialize() async {
    tz.initializeTimeZones();

    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
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

      // Explicitly register the high-importance Alarm Channel
      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        channelId,
        channelName,
        description: channelDescription,
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound('dawn_of_the_sovereign'),
        enableVibration: true,
        enableLights: true,
        showBadge: true,
      );

      await androidImplementation.createNotificationChannel(channel);
    }
  }

  static Future<void> scheduleAlarm(int secondsLeft, String title) async {
    final scheduledDate = tz.TZDateTime.now(tz.local).add(Duration(seconds: secondsLeft));

    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      '🔔 Finished: $title',
      'Your meditation session has completed.',
      scheduledDate,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          channelId,
          channelName,
          channelDescription: channelDescription,
          importance: Importance.max,
          priority: Priority.max,
          playSound: true,
          sound: RawResourceAndroidNotificationSound('dawn_of_the_sovereign'),
          visibility: NotificationVisibility.public,
          audioAttributesUsage: AudioAttributesUsage.alarm,
          category: AndroidNotificationCategory.alarm,
          fullScreenIntent: true,
          ongoing: false,
          autoCancel: true,
          enableVibration: true,
          enableLights: true,
          styleInformation: BigTextStyleInformation(
            'Your meditation session is complete. Tap to open the app.',
          ),
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentSound: true,
          sound: 'dawn_of_the_sovereign.mp3',
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  static Future<void> cancelAlarm() async {
    await flutterLocalNotificationsPlugin.cancel(0);
  }
}
