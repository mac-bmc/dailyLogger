import 'dart:io';

import 'package:daily_log/generated/l10n.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class LogFormPage extends StatefulWidget {
  const LogFormPage({super.key});

  @override
  State<LogFormPage> createState() => _LogFormState();
}

class _LogFormState extends State<LogFormPage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBarLayout(context),
      body: _getBodyLayout(context),
    );
  }

  void _onItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  PreferredSizeWidget _getAppBarLayout(BuildContext context) {
    return AppBar(
      title: Text(S.current.daily_log),
    );
  }

  Widget _getBodyLayout(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(child: _getFormLayout(context))),
        ],
      ),
    );
  }

  Widget _getFormLayout(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          _getDateBuilder(context, "date", S.current.log_date),
          _getCategoryContainer(context, "Production", _onItemClicked, 1),
          if (_selectedIndex == 1) _getProductionLayout(context)
        ],
      ),
    );
  }

  Widget _getTextField(BuildContext context, String key, String label) {
    return FormBuilderTextField(
      name: key,
      decoration: InputDecoration(labelText: label),
    );
  }

  Widget _getCategoryContainer(
      BuildContext context, String label, Function onChange, int index) {
    return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onChange(index);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            child: Text(label),
          ),
        ));
  }

  Widget _getHeadingLabel(BuildContext context, String label) {
    return Text(
      label,
      style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          height: 1.1),
    );
  }

  Widget _getLabel(BuildContext context, String label) {
    return Text(
      label,
      style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          height: 1.1),
    );
  }

  Widget _getDateBuilder(BuildContext context, String key, String label) {
    return FormBuilderDateTimePicker(
      name: key,
      format: DateFormat('dd/MM/yyyy'),
      decoration: InputDecoration(labelText: label),
      inputType: InputType.date,
      initialDate: DateTime.now(),
      initialValue: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
  }

  Widget _getProductionLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child:
                _getHeadingLabel(context, S.current.title_shift_twelve_eight)),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_acid),
        _getTextField(context, "12_8_acid_dcda", S.current.label_dcda),
        _getTextField(context, "12_8_acid_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_dmwater),
        _getTextField(context, "12_8_dm_water_dcda", S.current.label_dcda),
        _getTextField(
            context, "12_8_dm_water_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_cooling_water),
        _getTextField(context, "12_8_c_water_pH", S.current.label_ph),
        _getTextField(context, "12_8_c_water_cl2", S.current.label_cl2),
        Align(
            alignment: Alignment.center,
            child: _getHeadingLabel(context, S.current.title_shift_eight_four)),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_acid),
        _getTextField(context, "8_4_acid_dcda", S.current.label_dcda),
        _getTextField(context, "8_4_acid_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_dmwater),
        _getTextField(context, "8_4_dm_water_dcda", S.current.label_dcda),
        _getTextField(
            context, "8_4_dm_water_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_cooling_water),
        _getTextField(context, "8_4_c_water_pH", S.current.label_ph),
        _getTextField(context, "8_4_c_water_cl2", S.current.label_cl2),
        Align(
            alignment: Alignment.center,
            child:
                _getHeadingLabel(context, S.current.title_shift_four_twelve)),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_acid),
        _getTextField(context, "4_12_acid_dcda", S.current.label_dcda),
        _getTextField(context, "4_12_acid_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_dmwater),
        _getTextField(context, "4_12_dm_water_dcda", S.current.label_dcda),
        _getTextField(
            context, "4_12_dm_water_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getLabel(context, S.current.title_cooling_water),
        _getTextField(context, "4_12_c_water_pH", S.current.label_ph),
        _getTextField(context, "4_12_c_water_cl2", S.current.label_cl2),
      ],
    );
  }

  Future<void> fillTemplate() async {
    try {
      ByteData data = await rootBundle.load('assets/template.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      var excelFile = Excel.decodeBytes(bytes);
      var sheet = excelFile['Sheet1'];

      // Fill in the data (adjust cell indexes as needed)
      /*sheet!.cell(CellIndex.indexByString("B2")).value = nameController.text; // Example: cell B2
      sheet.cell(CellIndex.indexByString("B3")).value = ageController.text;   // Example: cell B3*/

      var savedBytes = excelFile.save();
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/FilledTemplate.xlsx')
        ..createSync(recursive: true)
        ..writeAsBytesSync(savedBytes!);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Excel file saved at: ${file.path}')),
      );
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to generate Excel file')),
      );
    }
  }
}
