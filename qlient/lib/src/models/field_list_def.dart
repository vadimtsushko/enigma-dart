/// This file was autogenerated

library field_list_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'field_list_def.g.dart';

/// Defines the fields to show.
abstract class FieldListDef implements Built<FieldListDef, FieldListDefBuilder> {

 static Serializer<FieldListDef> get serializer => _$fieldListDefSerializer;

  /// Shows the system tables if set to true.
  /// Default is false.
  /// Original name: qShowSystem
  @nullable
  bool get showSystem;

  /// Shows the hidden fields if set to true.
  /// Default is false.
  /// Original name: qShowHidden
  @nullable
  bool get showHidden;

  /// Show the semantic fields if set to true.
  /// Default is false.
  /// Original name: qShowSemantic
  @nullable
  bool get showSemantic;

  /// Shows the tables and fields present in the data model viewer if set to true.
  /// Default is false.
  /// Original name: qShowSrcTables
  @nullable
  bool get showSrcTables;

  /// Shows the fields defined on the fly if set to true.
  /// Default is false.
  /// Original name: qShowDefinitionOnly
  @nullable
  bool get showDefinitionOnly;

  /// Shows the fields and derived fields if set to true.
  /// Default is false.
  /// Original name: qShowDerivedFields
  @nullable
  bool get showDerivedFields;

  /// Shows the Direct Discovery measure fields if set to true.
  /// Default is false.
  /// Original name: qShowImplicit
  @nullable
  bool get showImplicit;

  factory FieldListDef([updates(FieldListDefBuilder b)]) = _$FieldListDef;

  FieldListDef._();
}
