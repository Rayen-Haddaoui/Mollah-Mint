import '/flutter_flow/flutter_flow_util.dart';
import 'receipt_widget.dart' show ReceiptWidget;
import 'package:flutter/material.dart';

class ReceiptModel extends FlutterFlowModel<ReceiptWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
