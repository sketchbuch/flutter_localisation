import 'dart:async';
import 'package:flutter_localisation/l10n/app/delegate.dart';
import 'package:flutter_localisation/l10n/app/messages/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n/app/source lib/l10n/app/localizations.dart
// flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n/app/messages lib/l10n/app/localizations.dart lib/l10n/app/source/intl_en.arb lib/l10n/app/source/intl_de.arb

class AppLocalizations {
  static const AppLocalizationsDelegate delegate = AppLocalizationsDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get title {
    return Intl.message('Hello world App', name: 'title', desc: 'The application title');
  }

  String get hello {
    return Intl.message('Hello', name: 'hello');
  }
}
