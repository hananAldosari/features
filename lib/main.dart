import 'package:features/services/local_notification_service.dart';
import 'package:features/views/notification_view.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:timezone/data/latest.dart' as tz;

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); 
  LocalNotificationService notificationService = LocalNotificationService();
  await notificationService.init();
  tz.initializeTimeZones();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationView()
    );
  }
}
