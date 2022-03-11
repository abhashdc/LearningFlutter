import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationVariable =
      FlutterLocalNotificationsPlugin(); //initializing the object

  Future showNotification() async {
    //Our main class to
    notificationVariable.show(
        0,
        "Submitted",
        "Form successfully Submitted",
        NotificationDetails(
          android: androidDetail,
          iOS: iosDetail,
        ));
  }

  AndroidNotificationDetails androidDetail =
      AndroidNotificationDetails('0', 'channelName');
  IOSNotificationDetails iosDetail = IOSNotificationDetails();

  //SIngleton class
  static final _notificationService = NotificationService._privateConstructor();
  NotificationService._privateConstructor();

  factory NotificationService() {
    return _notificationService;
  }

  Future init() async {
    AndroidInitializationSettings androidSetting =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    IOSInitializationSettings iosSetting = IOSInitializationSettings();
    InitializationSettings initSetting =
        InitializationSettings(android: androidSetting, iOS: iosSetting);
    await notificationVariable.initialize(initSetting);
  }
}
