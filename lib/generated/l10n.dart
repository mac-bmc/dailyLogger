// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get _locale {
    return Intl.message(
      'en',
      name: '_locale',
      desc: '',
      args: [],
    );
  }

  /// `Daily log`
  String get daily_log {
    return Intl.message(
      'Daily log',
      name: 'daily_log',
      desc: '',
      args: [],
    );
  }

  /// `Production`
  String get production {
    return Intl.message(
      'Production',
      name: 'production',
      desc: '',
      args: [],
    );
  }

  /// `Log Date`
  String get log_date {
    return Intl.message(
      'Log Date',
      name: 'log_date',
      desc: '',
      args: [],
    );
  }

  /// `Enter DCDA`
  String get label_dcda {
    return Intl.message(
      'Enter DCDA',
      name: 'label_dcda',
      desc: '',
      args: [],
    );
  }

  /// `Enter SO2/Acid`
  String get label_acid_SO2_acid {
    return Intl.message(
      'Enter SO2/Acid',
      name: 'label_acid_SO2_acid',
      desc: '',
      args: [],
    );
  }

  /// `Enter pH`
  String get label_ph {
    return Intl.message(
      'Enter pH',
      name: 'label_ph',
      desc: '',
      args: [],
    );
  }

  /// `Enter Cl2`
  String get label_cl2 {
    return Intl.message(
      'Enter Cl2',
      name: 'label_cl2',
      desc: '',
      args: [],
    );
  }

  /// `ACID MT`
  String get title_acid {
    return Intl.message(
      'ACID MT',
      name: 'title_acid',
      desc: '',
      args: [],
    );
  }

  /// `DM WATER / M3`
  String get title_dmwater {
    return Intl.message(
      'DM WATER / M3',
      name: 'title_dmwater',
      desc: '',
      args: [],
    );
  }

  /// `COOLING WATER`
  String get title_cooling_water {
    return Intl.message(
      'COOLING WATER',
      name: 'title_cooling_water',
      desc: '',
      args: [],
    );
  }

  /// `Shift 12/8`
  String get title_shift_twelve_eight {
    return Intl.message(
      'Shift 12/8',
      name: 'title_shift_twelve_eight',
      desc: '',
      args: [],
    );
  }

  /// `Shift 4/12`
  String get title_shift_four_twelve {
    return Intl.message(
      'Shift 4/12',
      name: 'title_shift_four_twelve',
      desc: '',
      args: [],
    );
  }

  /// `Shift 8/4`
  String get title_shift_eight_four {
    return Intl.message(
      'Shift 8/4',
      name: 'title_shift_eight_four',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
