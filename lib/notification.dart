import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationApi {
//   static final notification = FlutterLocalNotificationsPlugin();

//     static Future init({bool initScheduled = false}) async {
//     final android = AndroidInitializationSettings('@mipmap/ic_launcher');
//     final ios = IOSInitializationSettings();
//     final setting = InitializaitonSettings(android:android, iOS: ios);

//     await notification.initialize(
//       setting,
//       onSelectNotification: (payload async{})
//     )
//   }


//   static Future notificationDetails() async {
//     return NotificationDetails(
//       android: AndroidNotificationDetails(
//         'channel id',
//         'chanel name',
//         channelDescription: 'channel desc',
//         importance: Importance.max,
//       ),
//     );
//   }

//   static Future showNotification({
//     int id = 0,
//     String? title,
//     String? body,
//     String payload = 'nah',
//   }) async {
//     notification.show(id, title, body, await notificationDetails(),
//         payload: payload);
//   }

// }




