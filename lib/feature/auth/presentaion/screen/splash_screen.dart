import 'package:e_commerce_app/app/extension/localization_extension.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        // child: Text(AppLocalizations.of(context)!.hello), //without create localization default context
        child: Text(context.localization.hello),

      ),
    );
  }
}
