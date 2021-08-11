import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'example_record.g.dart';

abstract class ExampleRecord
    implements Built<ExampleRecord, ExampleRecordBuilder> {
  static Serializer<ExampleRecord> get serializer => _$exampleRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ExampleRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('example');

  static Stream<ExampleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ExampleRecord._();
  factory ExampleRecord([void Function(ExampleRecordBuilder) updates]) =
      _$ExampleRecord;

  static ExampleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createExampleRecordData({
  String name,
}) =>
    serializers.toFirestore(
        ExampleRecord.serializer, ExampleRecord((e) => e..name = name));
