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

  /// `PRODUCTION`
  String get production {
    return Intl.message(
      'PRODUCTION',
      name: 'production',
      desc: '',
      args: [],
    );
  }

  /// `ISSUES`
  String get title_issues {
    return Intl.message(
      'ISSUES',
      name: 'title_issues',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get title_others {
    return Intl.message(
      'Others',
      name: 'title_others',
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

  /// `Phosphate`
  String get label_phosphate {
    return Intl.message(
      'Phosphate',
      name: 'label_phosphate',
      desc: '',
      args: [],
    );
  }

  /// `Sulphate`
  String get label_sulphate {
    return Intl.message(
      'Sulphate',
      name: 'label_sulphate',
      desc: '',
      args: [],
    );
  }

  /// `CD`
  String get label_cd {
    return Intl.message(
      'CD',
      name: 'label_cd',
      desc: '',
      args: [],
    );
  }

  /// `PD`
  String get label_pd {
    return Intl.message(
      'PD',
      name: 'label_pd',
      desc: '',
      args: [],
    );
  }

  /// `SALE`
  String get label_sale {
    return Intl.message(
      'SALE',
      name: 'label_sale',
      desc: '',
      args: [],
    );
  }

  /// `RAP`
  String get label_RAP {
    return Intl.message(
      'RAP',
      name: 'label_RAP',
      desc: '',
      args: [],
    );
  }

  /// `PC`
  String get label_PC {
    return Intl.message(
      'PC',
      name: 'label_PC',
      desc: '',
      args: [],
    );
  }

  /// `PLANT PARAMETERS - SO2/ACID`
  String get title_plant_parm_S02 {
    return Intl.message(
      'PLANT PARAMETERS - SO2/ACID',
      name: 'title_plant_parm_S02',
      desc: '',
      args: [],
    );
  }

  /// `PLANT PARAMETERS - DCDA`
  String get title_plant_param_dcda {
    return Intl.message(
      'PLANT PARAMETERS - DCDA',
      name: 'title_plant_param_dcda',
      desc: '',
      args: [],
    );
  }

  /// `Sulpher`
  String get label_sulpher {
    return Intl.message(
      'Sulpher',
      name: 'label_sulpher',
      desc: '',
      args: [],
    );
  }

  /// `Stack`
  String get label_stack {
    return Intl.message(
      'Stack',
      name: 'label_stack',
      desc: '',
      args: [],
    );
  }

  /// `Inlet SO2 %`
  String get label_inletSO2 {
    return Intl.message(
      'Inlet SO2 %',
      name: 'label_inletSO2',
      desc: '',
      args: [],
    );
  }

  /// `DP CONV in cmwc`
  String get label_dp_conv {
    return Intl.message(
      'DP CONV in cmwc',
      name: 'label_dp_conv',
      desc: '',
      args: [],
    );
  }

  /// `IAT PHE IN TEMP (in C)`
  String get label_iat_temp {
    return Intl.message(
      'IAT PHE IN TEMP (in C)',
      name: 'label_iat_temp',
      desc: '',
      args: [],
    );
  }

  /// `PDT OUT TEMP (in C)`
  String get label_pdt_temp {
    return Intl.message(
      'PDT OUT TEMP (in C)',
      name: 'label_pdt_temp',
      desc: '',
      args: [],
    );
  }

  /// `Furnace Temperature`
  String get label_furnace_temp {
    return Intl.message(
      'Furnace Temperature',
      name: 'label_furnace_temp',
      desc: '',
      args: [],
    );
  }

  /// `Converter Bed Temperature`
  String get label_converter_bed_temperature {
    return Intl.message(
      'Converter Bed Temperature',
      name: 'label_converter_bed_temperature',
      desc: '',
      args: [],
    );
  }

  /// `Sulpher Analysis (ppm)`
  String get label_sulpher_analysis {
    return Intl.message(
      'Sulpher Analysis (ppm)',
      name: 'label_sulpher_analysis',
      desc: '',
      args: [],
    );
  }

  /// `Oleum Analysis`
  String get label_oleum_analysis {
    return Intl.message(
      'Oleum Analysis',
      name: 'label_oleum_analysis',
      desc: '',
      args: [],
    );
  }

  /// `Stock MT,`
  String get label_stock_mt {
    return Intl.message(
      'Stock MT,',
      name: 'label_stock_mt',
      desc: '',
      args: [],
    );
  }

  /// `Power Consumed`
  String get label_power_consumed {
    return Intl.message(
      'Power Consumed',
      name: 'label_power_consumed',
      desc: '',
      args: [],
    );
  }

  /// `ASH`
  String get label_ash {
    return Intl.message(
      'ASH',
      name: 'label_ash',
      desc: '',
      args: [],
    );
  }

  /// `ACIDITY D`
  String get label_acidity_d {
    return Intl.message(
      'ACIDITY D',
      name: 'label_acidity_d',
      desc: '',
      args: [],
    );
  }

  /// `ACIDITY_C`
  String get label_acidity_c {
    return Intl.message(
      'ACIDITY_C',
      name: 'label_acidity_c',
      desc: '',
      args: [],
    );
  }

  /// `TSO3`
  String get label_tso3 {
    return Intl.message(
      'TSO3',
      name: 'label_tso3',
      desc: '',
      args: [],
    );
  }

  /// `FSO3`
  String get label_fso3 {
    return Intl.message(
      'FSO3',
      name: 'label_fso3',
      desc: '',
      args: [],
    );
  }

  /// `Fe`
  String get label_fe {
    return Intl.message(
      'Fe',
      name: 'label_fe',
      desc: '',
      args: [],
    );
  }

  /// `Acid`
  String get label_acid {
    return Intl.message(
      'Acid',
      name: 'label_acid',
      desc: '',
      args: [],
    );
  }

  /// `Oleum`
  String get label_oleum {
    return Intl.message(
      'Oleum',
      name: 'label_oleum',
      desc: '',
      args: [],
    );
  }

  /// `Shutdown Details`
  String get label_shutdown_details {
    return Intl.message(
      'Shutdown Details',
      name: 'label_shutdown_details',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get label_from {
    return Intl.message(
      'From',
      name: 'label_from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get label_to {
    return Intl.message(
      'To',
      name: 'label_to',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get label_duration {
    return Intl.message(
      'Duration',
      name: 'label_duration',
      desc: '',
      args: [],
    );
  }

  /// `Reason for shutdown`
  String get label_reason {
    return Intl.message(
      'Reason for shutdown',
      name: 'label_reason',
      desc: '',
      args: [],
    );
  }

  /// `Shift Incharge`
  String get label_shift_in_charge {
    return Intl.message(
      'Shift Incharge',
      name: 'label_shift_in_charge',
      desc: '',
      args: [],
    );
  }

  /// `CS PIT level (cm)`
  String get label_cs_pit {
    return Intl.message(
      'CS PIT level (cm)',
      name: 'label_cs_pit',
      desc: '',
      args: [],
    );
  }

  /// `Caustic storage level (cm)`
  String get label_caustic_storage {
    return Intl.message(
      'Caustic storage level (cm)',
      name: 'label_caustic_storage',
      desc: '',
      args: [],
    );
  }

  /// `Initial`
  String get label_initial {
    return Intl.message(
      'Initial',
      name: 'label_initial',
      desc: '',
      args: [],
    );
  }

  /// `Final`
  String get label_final {
    return Intl.message(
      'Final',
      name: 'label_final',
      desc: '',
      args: [],
    );
  }

  /// `IRE Water Supply`
  String get label_ire_supply {
    return Intl.message(
      'IRE Water Supply',
      name: 'label_ire_supply',
      desc: '',
      args: [],
    );
  }

  /// `Steam TOTCC`
  String get label_steam_tot_cc {
    return Intl.message(
      'Steam TOTCC',
      name: 'label_steam_tot_cc',
      desc: '',
      args: [],
    );
  }

  /// `CT Makeup water`
  String get label_CT_water {
    return Intl.message(
      'CT Makeup water',
      name: 'label_CT_water',
      desc: '',
      args: [],
    );
  }

  /// `Sulpher Flow IR`
  String get label_sulpher_flow {
    return Intl.message(
      'Sulpher Flow IR',
      name: 'label_sulpher_flow',
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
