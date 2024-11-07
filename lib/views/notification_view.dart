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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () async {
                print("Entered");
                DateTime data = DateTime.now().add(const Duration(seconds: 1));
                await localNotificationService.scheduledNotification(
                  title: "Glob Notification",
                  body: "Don't forget your from Globant Flutter developers",
                  scheduledTime: data,
                );
                print("Finished");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 221, 255, 194),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 7,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Text(
                  "Press see the scheduled notification",
                  style: TextStyle(
                    color: Color.fromARGB(255, 84, 84, 84),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "This notification will be shown in 1 second",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
