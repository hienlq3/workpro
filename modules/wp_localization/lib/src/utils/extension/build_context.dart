import 'package:flutter/material.dart';
import 'package:wp_localization/generated/app_localizations.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get appLocalizations => AppLocalizations.of(this);
}
