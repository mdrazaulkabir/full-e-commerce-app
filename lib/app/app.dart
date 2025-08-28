import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class E_commerce extends StatefulWidget {
  const E_commerce({super.key});

  @override
  State<E_commerce> createState() => _E_commerceState();
}

class _E_commerceState extends State<E_commerce> {

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [observer],

    );
  }
}