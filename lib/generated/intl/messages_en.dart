// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "_locale": MessageLookupByLibrary.simpleMessage("en"),
        "daily_log": MessageLookupByLibrary.simpleMessage("Daily log"),
        "label_acid_SO2_acid":
            MessageLookupByLibrary.simpleMessage("Enter SO2/Acid"),
        "label_cl2": MessageLookupByLibrary.simpleMessage("Enter Cl2"),
        "label_dcda": MessageLookupByLibrary.simpleMessage("Enter DCDA"),
        "label_ph": MessageLookupByLibrary.simpleMessage("Enter pH"),
        "log_date": MessageLookupByLibrary.simpleMessage("Log Date"),
        "production": MessageLookupByLibrary.simpleMessage("Production"),
        "title_acid": MessageLookupByLibrary.simpleMessage("ACID MT"),
        "title_cooling_water":
            MessageLookupByLibrary.simpleMessage("COOLING WATER"),
        "title_dmwater": MessageLookupByLibrary.simpleMessage("DM WATER / M3"),
        "title_shift_eight_four":
            MessageLookupByLibrary.simpleMessage("Shift 8/4"),
        "title_shift_four_twelve":
            MessageLookupByLibrary.simpleMessage("Shift 4/12"),
        "title_shift_twelve_eight":
            MessageLookupByLibrary.simpleMessage("Shift 12/8")
      };
}
