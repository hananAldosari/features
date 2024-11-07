import 'package:features/feature_card_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Features implementation",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "This feature implemented by using OneSignal services, Notifications should be sent from the OneSignal account ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 30),
              FeatureCardWidget(
                cardColor: Color.fromARGB(255, 178, 230, 218),
                icon: Icons.notifications_active_outlined,
                title: 'Push Notification',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
