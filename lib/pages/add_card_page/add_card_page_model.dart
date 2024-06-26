import '/flutter_flow/flutter_flow_util.dart';
import 'add_card_page_widget.dart' show AddCardPageWidget;
import 'package:flutter/material.dart';

class AddCardPageModel extends FlutterFlowModel<AddCardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for cardnumber widget.
  FocusNode? cardnumberFocusNode;
  TextEditingController? cardnumberTextController;
  String? Function(BuildContext, String?)? cardnumberTextControllerValidator;
  // State field(s) for expdate widget.
  FocusNode? expdateFocusNode;
  TextEditingController? expdateTextController;
  String? Function(BuildContext, String?)? expdateTextControllerValidator;
  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvTextController;
  String? Function(BuildContext, String?)? cvvTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    cardnumberFocusNode?.dispose();
    cardnumberTextController?.dispose();

    expdateFocusNode?.dispose();
    expdateTextController?.dispose();

    cvvFocusNode?.dispose();
    cvvTextController?.dispose();
  }
}
