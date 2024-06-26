import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionRecord extends FirestoreRecord {
  TransactionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "card_number" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "sender_id" field.
  DocumentReference? _senderId;
  DocumentReference? get senderId => _senderId;
  bool hasSenderId() => _senderId != null;

  // "reciver_id" field.
  DocumentReference? _reciverId;
  DocumentReference? get reciverId => _reciverId;
  bool hasReciverId() => _reciverId != null;

  void _initializeFields() {
    _amount = castToType<double>(snapshotData['amount']);
    _type = snapshotData['type'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _cardNumber = castToType<int>(snapshotData['card_number']);
    _senderId = snapshotData['sender_id'] as DocumentReference?;
    _reciverId = snapshotData['reciver_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction');

  static Stream<TransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionRecord.fromSnapshot(s));

  static Future<TransactionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionRecord.fromSnapshot(s));

  static TransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionRecordData({
  double? amount,
  String? type,
  DateTime? createdAt,
  int? cardNumber,
  DocumentReference? senderId,
  DocumentReference? reciverId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'type': type,
      'created_at': createdAt,
      'card_number': cardNumber,
      'sender_id': senderId,
      'reciver_id': reciverId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionRecordDocumentEquality implements Equality<TransactionRecord> {
  const TransactionRecordDocumentEquality();

  @override
  bool equals(TransactionRecord? e1, TransactionRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.type == e2?.type &&
        e1?.createdAt == e2?.createdAt &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.senderId == e2?.senderId &&
        e1?.reciverId == e2?.reciverId;
  }

  @override
  int hash(TransactionRecord? e) => const ListEquality().hash([
        e?.amount,
        e?.type,
        e?.createdAt,
        e?.cardNumber,
        e?.senderId,
        e?.reciverId
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionRecord;
}
