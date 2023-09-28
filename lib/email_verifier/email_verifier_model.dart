import '/backend/api_requests/api_calls.dart';
import '/components/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmailVerifierModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? nameState = '';

  String? companynameState = '';

  String phoneState = '';

  String industriesState = '';

  String scoreState = '';

  String sourceState = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for EmailVerifierField widget.
  TextEditingController? emailVerifierFieldController;
  String? Function(BuildContext, String?)?
      emailVerifierFieldControllerValidator;
  // Stores action output result for [Backend Call - API (emailVerifier)] action in Container widget.
  ApiCallResponse? apiResultcykCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    emailVerifierFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
