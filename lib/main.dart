import 'package:features/home_view.dart';
import 'package:features/services/local_notification_service.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationService notificationService = LocalNotificationService();
  await notificationService.init();
  tz.initializeTimeZones();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("7a1e9d6b-355a-47e6-a845-b57c98c6b8fb");
  OneSignal.Notifications.requestPermission(true);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
