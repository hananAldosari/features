import 'package:features/details.dart';
import 'package:features/home.dart';
import 'package:features/screen_3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  final router= GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: "home",
        builder: (_,__)=>HomeScreen(),
      ),
      GoRoute(
        path: '/details',
        name: "deatils",
        builder: (context,state)=>DetailsScreen(),
      ),
      GoRoute(
        path: '/screen3',
        name: "3rd_screen",
        builder: (context,state)=>Screen3(),
      ),
    ]
    );

  runApp(MaterialApp.router(routerConfig: router,));
}
