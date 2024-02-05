import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionDRecord extends FirestoreRecord {
  QuestionDRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "is_true" field.
  bool? _isTrue;
  bool get isTrue => _isTrue ?? false;
  bool hasIsTrue() => _isTrue != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _question = snapshotData['question'] as String?;
    _isTrue = snapshotData['is_true'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('question_d')
          : FirebaseFirestore.instance.collectionGroup('question_d');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('question_d').doc(id);

  static Stream<QuestionDRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionDRecord.fromSnapshot(s));

  static Future<QuestionDRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionDRecord.fromSnapshot(s));

  static QuestionDRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionDRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionDRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionDRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionDRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionDRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionDRecordData({
  String? question,
  bool? isTrue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question': question,
      'is_true': isTrue,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionDRecordDocumentEquality implements Equality<QuestionDRecord> {
  const QuestionDRecordDocumentEquality();

  @override
  bool equals(QuestionDRecord? e1, QuestionDRecord? e2) {
    return e1?.question == e2?.question && e1?.isTrue == e2?.isTrue;
  }

  @override
  int hash(QuestionDRecord? e) =>
      const ListEquality().hash([e?.question, e?.isTrue]);

  @override
  bool isValidKey(Object? o) => o is QuestionDRecord;
}
