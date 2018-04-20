/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_inline_measure_def.dart';
import 'sort_criteria.dart';
import 'nx_cell.dart';
import 'value_expr.dart';
import 'nx_calc_cond.dart';

/// <div class=note>Either **qDef** or **qLibraryId** must be set, but not both. </div> <div class=note>If the measure is set in the hypercube and not in the library, this measure cannot be shared with other objects.</div> <div class=note>A measure that is set in the library can be used by many objects.</div> <div class=note>
/// expressions are complementary expressions associated to a measure. For example, you can decide to change the background color of a visualization depending on the values of the measure.
/// Attribute expressions do not affect the layout of an object. The sorting order is unchanged.
/// </div>
class NxMeasure {
  /// Refers to a measure stored in the library.
  /// Original name: qLibraryId
  String libraryId;
  /// Refers to a measure stored in the hypercube.
  /// Original name: qDef
  NxInlineMeasureDef def;
  /// Defines the sort criteria.
  /// The default value is sort by ascending alphabetic order.
  /// This property is optional.
  /// Original name: qSortBy
  SortCriteria sortBy;
  /// List of attribute expressions.
  /// Original name: qAttributeExpressions
  List<NxCell> attributeExpressions;
  /// List of attribute dimensions.
  /// Original name: qAttributeDimensions
  List<NxCell> attributeDimensions;
  /// Specifies a calculation condition, which must be fulfilled for the measure to be calculated.
  /// If the calculation condition is not met, the measure is excluded from the calculation.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCond
  ValueExpr calcCond;
  /// Specifies a calculation condition object.
  /// If CalcCondition.Cond is not fulfilled, the measure is excluded from the calculation and CalcCondition.Msg is evaluated.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCondition
  NxCalcCond calcCondition;
}

