/// This file was autogenerated

library nx_library_measure_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_library_measure_def.g.dart';

abstract class NxLibraryMeasureDef implements Built<NxLibraryMeasureDef, NxLibraryMeasureDefBuilder> {

 static Serializer<NxLibraryMeasureDef> get serializer => _$nxLibraryMeasureDefSerializer;

  /// Label of the measure.
  /// Original name: qLabel
  @nullable
  String get label;

  /// Definition of the measure.
  /// Original name: qDef
  @nullable
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
  String get grouping;

  /// Array of expressions.
  /// Original name: qExpressions
  @nullable
  List<NxCell> get expressions;

  /// Index to the active expression in a measure.
  /// Original name: qActiveExpression
  @nullable
  int get activeExpression;

  /// Original name: qLabelExpression
  @nullable
  String get labelExpression;

  factory NxLibraryMeasureDef([updates(NxLibraryMeasureDefBuilder b)]) = _$NxLibraryMeasureDef;

  NxLibraryMeasureDef._();
}
