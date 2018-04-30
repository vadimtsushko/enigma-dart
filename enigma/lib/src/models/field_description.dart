/// This file was autogenerated

library field_description;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'field_description.g.dart';

abstract class FieldDescription
    implements Built<FieldDescription, FieldDescriptionBuilder> {
  static Serializer<FieldDescription> get serializer =>
      _$fieldDescriptionSerializer;

  /// Internal number of the field.
  /// Original name: qInternalNumber
  @nullable
  @BuiltValueField(wireName: 'qInternalNumber')
  int get internalNumber;

  /// Name of the field.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// List of table names.
  /// Original name: qSrcTables
  @nullable
  @BuiltValueField(wireName: 'qSrcTables')
  BuiltList<NxCell> get srcTables;

  /// If set to true, it means that the field is a system field.
  /// The default value is false.
  /// Original name: qIsSystem
  @nullable
  @BuiltValueField(wireName: 'qIsSystem')
  bool get isSystem;

  /// If set to true, it means that the field is hidden.
  /// The default value is false.
  /// Original name: qIsHidden
  @nullable
  @BuiltValueField(wireName: 'qIsHidden')
  bool get isHidden;

  /// If set to true, it means that the field is a semantic.
  /// The default value is false.
  /// Original name: qIsSemantic
  @nullable
  @BuiltValueField(wireName: 'qIsSemantic')
  bool get isSemantic;

  /// If set to true, only distinct field values are shown.
  /// The default value is false.
  /// Original name: qDistinctOnly
  @nullable
  @BuiltValueField(wireName: 'qDistinctOnly')
  bool get distinctOnly;

  /// Number of distinct field values.
  /// Original name: qCardinal
  @nullable
  @BuiltValueField(wireName: 'qCardinal')
  int get cardinal;

  /// Total number of field values.
  /// Original name: qTotalCount
  @nullable
  @BuiltValueField(wireName: 'qTotalCount')
  int get totalCount;

  /// Original name: qPossibleCount_OBSOLETE
  @nullable
  @BuiltValueField(wireName: 'qPossibleCount_OBSOLETE')
  int get possibleCountOBSOLETE;

  /// Original name: qHasInfo_OBSOLETE
  @nullable
  @BuiltValueField(wireName: 'qHasInfo_OBSOLETE')
  bool get hasInfoOBSOLETE;

  /// If set to true, it means that the field is locked.
  /// The default value is false.
  /// Original name: qIsLocked
  @nullable
  @BuiltValueField(wireName: 'qIsLocked')
  bool get isLocked;

  /// If set to true, it means that the field has one and only one selection (not 0 and not more than 1).
  /// If this property is set to true, the field cannot be cleared anymore and no more selections can be performed in that field.
  /// The default value is false.
  /// Original name: qAlwaysOneSelected
  @nullable
  @BuiltValueField(wireName: 'qAlwaysOneSelected')
  bool get alwaysOneSelected;

  /// If set to true a logical AND (instead of a logical OR) is used when making selections in a field.
  /// The default value is false.
  /// Original name: qAndMode
  @nullable
  @BuiltValueField(wireName: 'qAndMode')
  bool get andMode;

  /// Is set to true if the value is a numeric.
  /// The default value is false.
  /// Original name: qIsNumeric
  @nullable
  @BuiltValueField(wireName: 'qIsNumeric')
  bool get isNumeric;

  /// Field comment.
  /// Original name: qComment
  @nullable
  @BuiltValueField(wireName: 'qComment')
  String get comment;

  /// Gives information on a field. For example, it can return the type of the field.
  /// Examples: key, text, ASCII.
  /// Original name: qTags
  @nullable
  @BuiltValueField(wireName: 'qTags')
  BuiltList<NxCell> get tags;

  /// If set to true, it means that the field is a field on the fly.
  /// The default value is false.
  /// Original name: qIsDefinitionOnly
  @nullable
  @BuiltValueField(wireName: 'qIsDefinitionOnly')
  bool get isDefinitionOnly;

  /// Static RAM memory used in bytes.
  /// Original name: qByteSize
  @nullable
  @BuiltValueField(wireName: 'qByteSize')
  int get byteSize;

  factory FieldDescription([updates(FieldDescriptionBuilder b)]) =
      _$FieldDescription;

  factory FieldDescription.init(
      {int internalNumber,
      String name,
      BuiltList<NxCell> srcTables,
      bool isSystem,
      bool isHidden,
      bool isSemantic,
      bool distinctOnly,
      int cardinal,
      int totalCount,
      int possibleCountOBSOLETE,
      bool hasInfoOBSOLETE,
      bool isLocked,
      bool alwaysOneSelected,
      bool andMode,
      bool isNumeric,
      String comment,
      BuiltList<NxCell> tags,
      bool isDefinitionOnly,
      int byteSize}) = _$FieldDescription._;

  FieldDescription._();
}