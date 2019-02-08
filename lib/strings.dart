import 'dart:math';

import 'package:flutter/material.dart';

///
/// a convenience method for getting the Strings obj
///
Strings strings({ BuildContext ctx }) {
  return Strings.get(ctx: ctx);
}
abstract class Strings {

  static Strings _instance;
  static Locale _locale;

  static void initLocale(BuildContext ctx ) => get(ctx: ctx);

  static Strings get({ BuildContext ctx }) {
    // if we have a context, see if we need to update the locale
    if (ctx != null) {
      try {
        // check if the locale is different
        final Locale newLocale = Localizations.localeOf(ctx);
        if (_locale != newLocale) {
          _locale = newLocale;
          // if the locale was updated, also update _instance
          _instance = _getSupportedTranslation();
        }
      } catch (e) { }
    }
    // make sure instance is initialized with the
    // correct translation for the locale
    if (_instance == null) {
      _instance = _getSupportedTranslation();
    }
    // kick back the translation
    return _instance;
  }

  static Strings _getSupportedTranslation() {
    // if no locale is available yet, return english
    if (_locale == null) return EnglishStrings();

    final String lang = _locale.languageCode;
    final String country = _locale.countryCode;

    if (lang == "en") {
      return EnglishStrings();
    }
    if (lang == "es") {
      return SpanishStrings();
    }

    return EnglishStrings();
  }

  final String appName = "Accomplisher";
  final String goals = "Goals";
  final String accomplished = "Accomplished";
  final String settings = "Settings";
  final String setGoalInstructions = "Pick a goal that you think you can complete in 30 days or less";
  final String addActionSteps = "Add Action Steps";
  final String setNewGoal = "Set New Goal";
  final String actionStepInstructions = "List out some of the things that you would need to do to accomplish this goal. Try to have items that would take no more than 1 day to complete.";
  final String actionStep = "Action Step";
}

class EnglishStrings extends Strings {}

class SpanishStrings extends Strings {
  @override
  String get appName => "Accomplisher";
}