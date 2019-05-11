import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
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
    return Intl.message('Hello world App',
        name: 'title', desc: 'The application title');
  }

  String get hello {
    return Intl.message('Hello', name: 'hello');
  }

  String get goodBye {
    return Intl.message('Goodbye My Friend',
        name: 'goodBye', desc: 'The goodbye title');
  }

  String get goodByeTwo {
    return Intl.message('Goodbye My Friend',
        name: 'goodByeTwo', desc: 'The goodbye title');
  }

  String get goodByeThree {
    return Intl.message('Goodbye My Friend',
        name: 'goodByeThree', desc: 'The goodbye title');
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ru'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}

///First initialization -
///flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/src/localizations.dart
///
///How add the new translation?
///1) Add getter -
///   example -
///     String get goodByeTwo {
///        return Intl.message('Goodbye My Friend',
///            name: 'goodByeTwo', desc: 'The goodbye title');
///      }
///  2) Run the command
///        flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n    --no-use-deferred-loading lib/src/localizations.dart lib/l10n/intl_*.arb
