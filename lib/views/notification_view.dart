import 'package:features/services/local_notification_service.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  //--
  LocalNotificationService localNotificationService =
      LocalNotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            print("Entered");
            DateTime data = DateTime.now().add(const Duration(seconds: 1));
            
            await localNotificationService.scheduledNotification(
              title: "Alarm",
              body: "Reminder",
              scheduledTime: data,
            );
            print("Finished");

          },
          child: const Text("Press to schedule"),
        ),
      ),
    );
  }
}
