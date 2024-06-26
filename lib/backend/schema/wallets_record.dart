import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WalletsRecord extends FirestoreRecord {
  WalletsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "card_number" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "exp_date" field.
  DateTime? _expDate;
  DateTime? get expDate => _expDate;
  bool hasExpDate() => _expDate != null;

  // "cvv" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  bool hasCvv() => _cvv != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _balance = castToType<double>(snapshotData['balance']);
    _cardNumber = castToType<int>(snapshotData['card_number']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _expDate = snapshotData['exp_date'] as DateTime?;
    _cvv = castToType<int>(snapshotData['cvv']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wallets')
          : FirebaseFirestore.instance.collectionGroup('wallets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wallets').doc(id);

  static Stream<WalletsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletsRecord.fromSnapshot(s));

  static Future<WalletsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletsRecord.fromSnapshot(s));

  static WalletsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WalletsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletsRecordData({
  String? id,
  double? balance,
  int? cardNumber,
  DateTime? createdAt,
  DateTime? updatedAt,
  DocumentReference? userRef,
  DateTime? expDate,
  int? cvv,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'balance': balance,
      'card_number': cardNumber,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'user_ref': userRef,
      'exp_date': expDate,
      'cvv': cvv,
    }.withoutNulls,
  );

  return firestoreData;
}

class WalletsRecordDocumentEquality implements Equality<WalletsRecord> {
  const WalletsRecordDocumentEquality();

  @override
  bool equals(WalletsRecord? e1, WalletsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.balance == e2?.balance &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.userRef == e2?.userRef &&
        e1?.expDate == e2?.expDate &&
        e1?.cvv == e2?.cvv;
  }

  @override
  int hash(WalletsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.balance,
        e?.cardNumber,
        e?.createdAt,
        e?.updatedAt,
        e?.userRef,
        e?.expDate,
        e?.cvv
      ]);

  @override
  bool isValidKey(Object? o) => o is WalletsRecord;
}
