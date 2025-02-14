import 'package:daily_log/generated/l10n.dart';
import 'package:daily_log/src/application/log_form_bloc.dart';
import 'package:daily_log/src/application/log_form_event.dart';
import 'package:daily_log/src/application/log_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class LogFormPage extends StatefulWidget {
  const LogFormPage({super.key});

  @override
  State<LogFormPage> createState() => _LogFormState();
}

class _LogFormState extends State<LogFormPage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  int _selectedIndex = 0;
  LogFormBloc? _bloc;

  @override
  void didChangeDependencies() {
    _bloc ??= BlocProvider.of<LogFormBloc>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBarLayout(context),
      body: _getBodyLayout(context),
    );
  }

  void _onItemClicked(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = 0;
      } else {
        _selectedIndex = index;
      }
    });
  }

  PreferredSizeWidget _getAppBarLayout(BuildContext context) {
    return AppBar(
      title: Text(S.current.daily_log),
    );
  }

  Widget _getBodyLayout(BuildContext context) {
    return BlocBuilder<LogFormBloc, LogFormState>(builder: (context, state) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(child: _getFormLayout(context))),
            SizedBox(
              height: 8,
            ),
            _getAppButton(context, () {
              _saveAndValidateForm();
            }, "Submit"),
          ],
        ),
      );
    });
  }

  Widget _getFormLayout(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          _getDateBuilder(context, "date", S.current.log_date),
          _getCategoryContainer(
              context, S.current.production, _onItemClicked, 1),
          if (_selectedIndex == 1) _getProductionLayout(context),
          _getCategoryContainer(
              context, S.current.title_issues, _onItemClicked, 2),
          if (_selectedIndex == 2) _getIssuesLayout(context),
          _getCategoryContainer(
              context, S.current.title_plant_param_dcda, _onItemClicked, 3),
          if (_selectedIndex == 3) _getPlantPrmAcidLayout(context),
          _getCategoryContainer(
              context, S.current.title_plant_parm_S02, _onItemClicked, 4),
          if (_selectedIndex == 4) _getPlantPrmSO2Layout(context),
          _getCategoryContainer(
              context, S.current.title_plant_parm_S02, _onItemClicked, 5),
          if (_selectedIndex == 5) _getPlantPrmSO2Layout(context),
          _getCategoryContainer(
              context, S.current.title_others, _onItemClicked, 6),
          if (_selectedIndex == 6) _getOthersLayout(context),
          _getCategoryContainer(
              context, S.current.label_shutdown_details, _onItemClicked, 7),
          if (_selectedIndex == 7) _getShutDownLayout(context),
          SizedBox(
            height: 8,
          )
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

  Widget _getSaveBtn(BuildContext context) {
    return _getAppButton(context, () {
      _saveAndValidateForm();
    }, "Save");
  }

  Widget _getCategoryContainer(
      BuildContext context, String label, Function onChange, int index) {
    return Material(
        type: MaterialType.card,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onChange(index);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
            ),
            width: double.infinity,
            child: Text(
              label,
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  height: 1.1),
            ),
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

  Widget _getIssuesLayout(BuildContext context) {
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
        _getTextField(context, "12/8_phosphate", S.current.label_phosphate),
        _getTextField(context, "12/8_sulphate", S.current.label_sulphate),
        _getTextField(context, "12/8_cd", S.current.label_cd),
        _getTextField(context, "12/8_pd", S.current.label_pd),
        _getTextField(context, "12/8_rap", S.current.label_RAP),
        _getTextField(context, "12/8_pc", S.current.label_PC),
        _getTextField(context, "12/8_sale", S.current.label_sale),
        SizedBox(
          height: 8,
        ),
        Align(
            alignment: Alignment.center,
            child:
                _getHeadingLabel(context, S.current.title_shift_twelve_eight)),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "8/4_phosphate", S.current.label_phosphate),
        _getTextField(context, "8/4_sulphate", S.current.label_sulphate),
        _getTextField(context, "8/4_cd", S.current.label_cd),
        _getTextField(context, "8/4_pd", S.current.label_pd),
        _getTextField(context, "8/4_rap", S.current.label_RAP),
        _getTextField(context, "8/4_pc", S.current.label_PC),
        _getTextField(context, "8/4_sale", S.current.label_sale),
        SizedBox(
          height: 8,
        ),
        Align(
            alignment: Alignment.center,
            child:
                _getHeadingLabel(context, S.current.title_shift_twelve_eight)),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "4/12_phosphate", S.current.label_phosphate),
        _getTextField(context, "4/12_sulphate", S.current.label_sulphate),
        _getTextField(context, "4/12_cd", S.current.label_cd),
        _getTextField(context, "4/12_pd", S.current.label_pd),
        _getTextField(context, "4/12_rap", S.current.label_RAP),
        _getTextField(context, "4/12_pc", S.current.label_PC),
        _getTextField(context, "4/12_sale", S.current.label_sale)
      ],
    );
  }

  Widget _getPlantPrmSO2Layout(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
          alignment: Alignment.center,
          child: _getHeadingLabel(context, S.current.title_shift_twelve_eight)),
      SizedBox(
        height: 8,
      ),
      _getTextField(context, "12_8_so2_plant_sulpher", S.current.label_sulpher),
      _getTextField(
          context, "12_8_so2_plant_inl_SO2", S.current.label_inletSO2),
      _getTextField(context, "12_8_so2_plant_stack", S.current.label_stack),
      Align(
          alignment: Alignment.center,
          child: _getHeadingLabel(context, S.current.title_shift_eight_four)),
      SizedBox(
        height: 8,
      ),
      _getTextField(context, "8_4_so2_plant_sulpher", S.current.label_sulpher),
      _getTextField(context, "8_4_so2_plant_inl_SO2", S.current.label_inletSO2),
      _getTextField(context, "8_4_so2_plant_stack", S.current.label_stack),
      Align(
          alignment: Alignment.center,
          child: _getHeadingLabel(context, S.current.title_shift_four_twelve)),
      SizedBox(
        height: 8,
      ),
      _getTextField(context, "4_12_so2_plant_sulpher", S.current.label_sulpher),
      _getTextField(
          context, "4_12_so2_plant_inl_SO2", S.current.label_inletSO2),
      _getTextField(context, "4_12_so2_plant_stack", S.current.label_stack),
      SizedBox(
        height: 12,
      ),
      _getTextField(context, "so2_plant_sulpher", S.current.label_dp_conv),
      _getTextField(context, "so2_plant_inl_SO2", S.current.label_iat_temp),
      _getTextField(context, "so2_plant_stack", S.current.label_pdt_temp),
      SizedBox(
        height: 8,
      ),
      _getLabel(context, S.current.label_furnace_temp),
      _getTextField(context, "so2_plant_ft_1", "1"),
      _getTextField(context, "so2_plant_ft_2", "2"),
      _getTextField(context, "so2_plant_ft_3", "3"),
      SizedBox(
        height: 8,
      ),
      _getLabel(context, S.current.label_converter_bed_temperature),
      _getTextField(context, "so2_plant_ct_1", "1"),
      _getTextField(context, "so2_plant_ct_2", "2"),
      _getTextField(context, "so2_plant_ct_3", "3"),
      _getTextField(context, "so2_plant_ct_4", "4"),
    ]);
  }

  Widget _getOthersLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_sulpher_analysis)),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "sa_ash", S.current.label_ash),
        _getTextField(context, "sa_acidity_c", S.current.label_acidity_c),
        _getTextField(context, "sa_acidity_d", S.current.label_acidity_d),
        SizedBox(
          height: 16,
        ),
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_oleum_analysis)),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "oa_fs03", S.current.label_fso3),
        _getTextField(context, "oa_ts03", S.current.label_tso3),
        _getTextField(context, "oa_fe", S.current.label_fe),
        SizedBox(
          height: 16,
        ),
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_power_consumed)),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "po_dcda", S.current.label_dcda),
        _getTextField(context, "po_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 16,
        ),
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_ire_supply)),
        _getTextField(context, "ire_init", S.current.label_initial),
        _getTextField(context, "ire_final", S.current.label_initial),
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_steam_tot_cc)),
        _getTextField(context, "steam_tot_cc_init", S.current.label_initial),
        _getTextField(context, "steam_tot_cc_final", S.current.label_initial),
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_CT_water)),
        _getTextField(context, "ct_water_init", S.current.label_initial),
        _getTextField(context, "ct_water_final", S.current.label_initial),
        Align(
            alignment: Alignment.center,
            child: _getLabel(context, S.current.label_sulpher_flow)),
        _getTextField(context, "sulpher_flow_dcda", S.current.label_dcda),
        _getTextField(
            context, "sulpher_flow_so2", S.current.label_acid_SO2_acid),
      ],
    );
  }

  Widget _getShutDownLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getTextField(context, "shutdown_from", S.current.label_from),
        _getTextField(context, "shutdown_to", S.current.label_to),
        _getTextField(context, "shutdown_duration", S.current.label_duration),
        SizedBox(
          height: 16,
        ),
        _getLabel(context, S.current.label_cs_pit),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "cpit_dcda", S.current.label_dcda),
        _getTextField(context, "cpit_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 16,
        ),
        _getLabel(context, S.current.label_caustic_storage),
        SizedBox(
          height: 8,
        ),
        _getTextField(context, "caus_dcda", S.current.label_dcda),
        _getTextField(context, "caus_so2", S.current.label_acid_SO2_acid),
        SizedBox(
          height: 8,
        ),
        _getTextField(
            context, "shift_in_charge", S.current.label_shift_in_charge),
      ],
    );
  }

  Widget _getPlantPrmAcidLayout(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Align(
          alignment: Alignment.center,
          child: _getHeadingLabel(context, S.current.title_shift_twelve_eight)),
      SizedBox(
        height: 8,
      ),
      _getTextField(
          context, "12_8_acid_plant_sulpher", S.current.label_sulpher),
      _getTextField(
          context, "12_8_acid_plant_inl_SO2", S.current.label_inletSO2),
      _getTextField(context, "12_8_acid_plant_stack", S.current.label_stack),
      Align(
          alignment: Alignment.center,
          child: _getHeadingLabel(context, S.current.title_shift_eight_four)),
      SizedBox(
        height: 8,
      ),
      _getTextField(context, "8_4_acid_plant_sulpher", S.current.label_sulpher),
      _getTextField(
          context, "8_4_acid_plant_inl_SO2", S.current.label_inletSO2),
      _getTextField(context, "8_4_acid_plant_stack", S.current.label_stack),
      Align(
          alignment: Alignment.center,
          child: _getHeadingLabel(context, S.current.title_shift_four_twelve)),
      SizedBox(
        height: 8,
      ),
      _getTextField(
          context, "4_12_acid_plant_sulpher", S.current.label_sulpher),
      _getTextField(
          context, "4_12_acid_plant_inl_SO2", S.current.label_inletSO2),
      _getTextField(context, "4_12_acid_plant_stack", S.current.label_stack),
      SizedBox(
        height: 12,
      ),
      _getTextField(context, "acid_plant_sulpher", S.current.label_dp_conv),
      _getTextField(context, "acid_plant_inl_SO2", S.current.label_iat_temp),
      _getTextField(context, "acid_plant_stack", S.current.label_pdt_temp),
      SizedBox(
        height: 8,
      ),
      _getLabel(context, S.current.label_furnace_temp),
      _getTextField(context, "acid_plant_ft_1", "1"),
      _getTextField(context, "acid_plant_ft_2", "2"),
      _getTextField(context, "acid_plant_ft_3", "3"),
      SizedBox(
        height: 8,
      ),
      _getLabel(context, S.current.label_converter_bed_temperature),
      _getTextField(context, "acid_plant_ct_1", "1"),
      _getTextField(context, "acid_plant_ct_2", "2"),
      _getTextField(context, "acid_plant_ct_3", "3"),
      _getTextField(context, "acid_plant_ct_4", "4"),
    ]);
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

  Widget _getAppButton(BuildContext context, Function onTap, String label) {
    return SizedBox(
      height: 40,
      child: Material(
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void _saveAndValidateForm() {
    if (_formKey.currentState!.saveAndValidate()) {
      print(_formKey.currentState!.value.entries.toList());
      final mapEntries = _formKey.currentState!.value.entries.toList();
      List<Map<String, dynamic>> listOfMaps = mapEntries.map((entry) {
        return {entry.key: entry.value};
      }).toList();
      _bloc?.add(LogSavedEvent(dataMap: listOfMaps));
    }
  }
}
