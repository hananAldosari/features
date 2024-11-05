import 'package:features/feature_card_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Features implementation",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Click to view each implementation",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: const [
                    FeatureCardWidget(
                      cardColor: Color.fromARGB(255, 206, 241, 178),
                      icon: Icons.map_outlined,
                      title: 'Google Maps',
                    ),
                    FeatureCardWidget(
                      cardColor: Color.fromARGB(255, 253, 182, 182),
                      icon: Icons.link,
                      title: 'Deep Linking',
                    ),
                    FeatureCardWidget(
                      cardColor: Color(0xffFFF9CA),
                      icon: Icons.notifications_active,
                      title: 'Local Notification',
                    ),
                    FeatureCardWidget(
                      cardColor: Color.fromARGB(255, 178, 230, 218),
                      icon: Icons.notifications_active_outlined,
                      title: 'Push Notification',
                    ),
                    FeatureCardWidget(
                      cardColor: Color(0xffFFDEB4),
                      icon: Icons.list,
                      title: 'Infinite lists',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
