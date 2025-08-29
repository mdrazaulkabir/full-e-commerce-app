import 'package:e_commerce_app/feature/auth/presentaion/screen/splash_screen.dart';
import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class E_commerce extends StatefulWidget {
  const E_commerce({super.key});

  @override
  State<E_commerce> createState() => _E_commerceState();
}

class _E_commerceState extends State<E_commerce> {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(
    analytics: analytics,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('bn'),
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // Bangla
      ],

      navigatorObservers: [observer],
      home: SplashScreen(),
    );
  }
}
