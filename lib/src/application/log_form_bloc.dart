import 'dart:io';

import 'package:daily_log/src/application/log_form_event.dart';
import 'package:daily_log/src/application/log_form_state.dart';
import 'package:daily_log/src/log_dao.dart';
import 'package:excel/excel.dart' as excel;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

class LogFormBloc extends Bloc<LogFormEvent, LogFormState> {
  LogFormBloc() : super(LogFormState()) {
    on<LogSavedEvent>((event, emit) async {
      await _onLogSaved(emit, event);
    });
    on<LogSubmittedEvent>((event, emit) async {
      await _saveLog(event.dataMap);
    });
  }

  Future<void> _onLogSaved(
      Emitter<LogFormState> emit, LogSavedEvent event) async {
    try {
      emit(state.copyWith(isBusy: true));
      await _saveLog(event.dataMap);
    } catch (e) {
      print(e);
    } finally {
      emit(state.copyWith(isBusy: false));
    }
  }

  Future<void> _saveLog(List<Map<String, dynamic>> dataMap) async {
    await LogDao().saveData(dataMap);
    print(LogDao().getAllData());
  }

  Future<void> fillTemplate() async {
    try {
      ByteData data = await rootBundle.load('assets/template.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      var excelFile = excel.Excel.decodeBytes(bytes);
      var sheet = excelFile['Sheet1'];

      // Fill in the data (adjust cell indexes as needed)
      /*sheet!.cell(CellIndex.indexByString("B2")).value = nameController.text; // Example: cell B2
      sheet.cell(CellIndex.indexByString("B3")).value = ageController.text;   // Example: cell B3*/

      var savedBytes = excelFile.save();
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/FilledTemplate.xlsx')
        ..createSync(recursive: true)
        ..writeAsBytesSync(savedBytes!);
    } catch (e) {
      print('Error: $e');
    }
  }
}
