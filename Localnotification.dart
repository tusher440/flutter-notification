import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class localnotification extends StatefulWidget {
  //const localnotification({Key? key}) : super(key: key);

  @override
  _localnotificationState createState() => _localnotificationState();
}

class _localnotificationState extends State<localnotification> {
  FlutterLocalNotificationsPlugin localNotificationsPlugin;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var androidInitialize = new  AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitialize = new IOSInitializationSettings();
    var initialzationSettings = new InitializationSettings(androidInitialize, iosInitialize);
     localNotificationsPlugin = new  FlutterLocalNotificationsPlugin();
     localNotificationsPlugin.initialize(initialzationSettings);
  }

  Future _shownotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "channelId",
        "Local Notification",
        "The is the description of the notification",
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker',
    );
    var iosDetails = new IOSNotificationDetails();
    var generalNotificationDetails = new NotificationDetails(androidDetails, iosDetails);
    await localNotificationsPlugin.show(0, "Tusher", "I am stay in office", generalNotificationDetails);
    // await localNotificationsPlugin.show(0, "Notif Title",
    //     "The Body of the Notification", generalNotificationDetails);
  }

  //void _shownotification() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Click the button to received the notification"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _shownotification,
        child: Icon(Icons.notifications),
      ),
    );
  }
}
