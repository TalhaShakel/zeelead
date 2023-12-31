import '/components/header_menu_options_widget.dart';
import '/components/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for HeaderMenuOptions component.
  late HeaderMenuOptionsModel headerMenuOptionsModel;
  // State field(s) for EmailAddressField widget.
  TextEditingController? emailAddressFieldController1;
  String? Function(BuildContext, String?)?
      emailAddressFieldController1Validator;
  // State field(s) for EmailAddressField widget.
  TextEditingController? emailAddressFieldController2;
  String? Function(BuildContext, String?)?
      emailAddressFieldController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for EmailAddressField widget.
  TextEditingController? emailAddressFieldController3;
  String? Function(BuildContext, String?)?
      emailAddressFieldController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    headerMenuOptionsModel =
        createModel(context, () => HeaderMenuOptionsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    headerMenuOptionsModel.dispose();
    emailAddressFieldController1?.dispose();
    emailAddressFieldController2?.dispose();
    emailAddressFieldController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
