import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_widget.dart' show TransferWidget;
import 'package:flutter/material.dart';

class TransferModel extends FlutterFlowModel<TransferWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for recivercard widget.
  FocusNode? recivercardFocusNode;
  TextEditingController? recivercardTextController;
  String? Function(BuildContext, String?)? recivercardTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    recivercardFocusNode?.dispose();
    recivercardTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
