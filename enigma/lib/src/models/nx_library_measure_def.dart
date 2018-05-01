/// This file was autogenerated

library nx_library_measure_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_library_measure_def.g.dart';

abstract class NxLibraryMeasureDef
    implements Built<NxLibraryMeasureDef, NxLibraryMeasureDefBuilder> {
  static Serializer<NxLibraryMeasureDef> get serializer =>
      _$nxLibraryMeasureDefSerializer;

  /// Label of the measure.
  /// Original name: qLabel
  @nullable
  @BuiltValueField(wireName: 'qLabel')
  String get label;

  /// Definition of the measure.
  /// Original name: qDef
  @nullable
  @BuiltValueField(wireName: 'qDef')
  String get def;

  /// Used to define a cyclic group or drill-down group.
  /// Default value is no grouping.
  /// This parameter is optional.
  ///
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  @BuiltValueField(wireName: 'qGrouping')
  String get grouping;

  /// Array of expressions.
  /// Original name: qExpressions
  @nullable
  @BuiltValueField(wireName: 'qExpressions')
  BuiltList<String> get expressions;

  /// Index to the active expression in a measure.
  /// Original name: qActiveExpression
  @nullable
  @BuiltValueField(wireName: 'qActiveExpression')
  int get activeExpression;

  /// Original name: qLabelExpression
  @nullable
  @BuiltValueField(wireName: 'qLabelExpression')
  String get labelExpression;

  factory NxLibraryMeasureDef([updates(NxLibraryMeasureDefBuilder b)]) =
      _$NxLibraryMeasureDef;

  factory NxLibraryMeasureDef.init(
      {String label,
      String def,
      String grouping,
      BuiltList<String> expressions,
      int activeExpression,
      String labelExpression}) = _$NxLibraryMeasureDef._;

  NxLibraryMeasureDef._();
}
