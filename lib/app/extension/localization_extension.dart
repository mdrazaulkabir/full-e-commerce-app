import 'package:e_commerce_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
extension LocalizationExtension on BuildContext{
  AppLocalizations get localization{
    return AppLocalizations.of(this)!;
  }
}