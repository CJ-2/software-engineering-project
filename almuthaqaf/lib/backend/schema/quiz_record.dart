import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizRecord extends FirestoreRecord {
  QuizRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "serial" field.
  int? _serial;
  int get serial => _serial ?? 0;
  bool hasSerial() => _serial != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "answered" field.
  bool? _answered;
  bool get answered => _answered ?? false;
  bool hasAnswered() => _answered != null;

  // "quiz_set" field.
  DocumentReference? _quizSet;
  DocumentReference? get quizSet => _quizSet;
  bool hasQuizSet() => _quizSet != null;

  void _initializeFields() {
    _serial = castToType<int>(snapshotData['serial']);
    _question = snapshotData['question'] as String?;
    _answered = snapshotData['answered'] as bool?;
    _quizSet = snapshotData['quiz_set'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizRecord.fromSnapshot(s));

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizRecord.fromSnapshot(s));

  static QuizRecord fromSnapshot(DocumentSnapshot snapshot) => QuizRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizRecordData({
  int? serial,
  String? question,
  bool? answered,
  DocumentReference? quizSet,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'serial': serial,
      'question': question,
      'answered': answered,
      'quiz_set': quizSet,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizRecordDocumentEquality implements Equality<QuizRecord> {
  const QuizRecordDocumentEquality();

  @override
  bool equals(QuizRecord? e1, QuizRecord? e2) {
    return e1?.serial == e2?.serial &&
        e1?.question == e2?.question &&
        e1?.answered == e2?.answered &&
        e1?.quizSet == e2?.quizSet;
  }

  @override
  int hash(QuizRecord? e) => const ListEquality()
      .hash([e?.serial, e?.question, e?.answered, e?.quizSet]);

  @override
  bool isValidKey(Object? o) => o is QuizRecord;
}
