/// This file was autogenerated

library table_record;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'point.dart';
part 'table_record.g.dart';

abstract class TableRecord implements Built<TableRecord, TableRecordBuilder> {
  static Serializer<TableRecord> get serializer => _$tableRecordSerializer;

  /// Name of the table.
  /// Original name: qName
  @nullable
  String get name;

  /// This property is set to true if the table is loose.
  /// Original name: qLoose
  @nullable
  bool get loose;

  /// Number of rows in the table.
  /// Original name: qNoOfRows
  @nullable
  int get noOfRows;

  /// Information about the fields in the table.
  /// Original name: qFields
  @nullable
  BuiltList<NxCell> get fields;

  /// Information about the position of the table.
  /// Original name: qPos
  @nullable
  Point get pos;

  /// Comment related to the table.
  /// Original name: qComment
  @nullable
  String get comment;

  /// If set to true, Direct Discovery is used.
  /// Direct Discovery fields are not loaded into memory and remain in the external database.
  /// Original name: qIsDirectDiscovery
  @nullable
  bool get isDirectDiscovery;

  /// This property is set to true if the table contains a synthetic key.
  /// Original name: qIsSynthetic
  @nullable
  bool get isSynthetic;

  factory TableRecord([updates(TableRecordBuilder b)]) = _$TableRecord;

  factory TableRecord.init(
      {String name,
      bool loose,
      int noOfRows,
      BuiltList<NxCell> fields,
      Point pos,
      String comment,
      bool isDirectDiscovery,
      bool isSynthetic}) = _$TableRecord._;

  TableRecord._();
}
