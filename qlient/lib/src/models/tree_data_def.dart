/// This file was autogenerated

library tree_data_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_calc_cond.dart';
import 'string_expr.dart';
part 'tree_data_def.g.dart';

/// Defines the properties of a TreeData object.
/// For more information about the definition of a TreeData object, see _Generic object_.
abstract class TreeDataDef implements Built<TreeDataDef, TreeDataDefBuilder> {

 static Serializer<TreeDataDef> get serializer => _$treeDataDefSerializer;

  /// Name of the alternate state.
  /// Default is current selections _$_ .
  /// Original name: qStateName
  @nullable
  String get stateName;

  /// Array of dimensions.
  /// Original name: qDimensions
  @nullable
  BuiltList<NxCell> get dimensions;

  /// Defines the order of the dimension levels/columns in the TreeData object.
  /// Column numbers are separated by a comma.
  /// Example: [1,0,2] means that the first level in the tree structure is dimension 1, followed by dimension 0 and dimension 2.
  /// The default sort order is the order in which the dimensions and measures have been defined in the TreeDataDef.
  /// Original name: qInterColumnSortOrder
  @nullable
  BuiltList<NxCell> get interColumnSortOrder;

  /// Removes zero values.
  /// Original name: qSuppressZero
  @nullable
  bool get suppressZero;

  /// Removes missing values.
  /// Original name: qSuppressMissing
  @nullable
  bool get suppressMissing;

  /// If this property is set to true, the cells are opened expanded. The default value is false.
  /// Original name: qOpenFullyExpanded
  @nullable
  bool get openFullyExpanded;

  /// If this property is set to true, the missing symbols (if any) are replaced by 0 if the value is a numeric and by an empty string if the value is a string.
  /// The default value is false.
  /// Original name: qPopulateMissing
  @nullable
  bool get populateMissing;

  /// Specifies a calculation condition object.
  /// If CalcCondition.Cond is not fulfilled, the TreeData is excluded from the calculation and CalcCondition.Msg is evaluated.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCondition
  @nullable
  NxCalcCond get calcCondition;

  /// Title of the TreeData object, for example the title of a chart.
  /// Original name: qTitle
  @nullable
  StringExpr get title;

  factory TreeDataDef([updates(TreeDataDefBuilder b)]) = _$TreeDataDef;

  factory TreeDataDef.init({String stateName, BuiltList<NxCell> dimensions, BuiltList<NxCell> interColumnSortOrder, bool suppressZero, bool suppressMissing, bool openFullyExpanded, bool populateMissing, NxCalcCond calcCondition, StringExpr title}) = _$TreeDataDef._;

  TreeDataDef._();
}
