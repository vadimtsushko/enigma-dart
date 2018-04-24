/// This file was autogenerated

library hyper_cube_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'value_expr.dart';
import 'string_expr.dart';
import 'nx_calc_cond.dart';
part 'hyper_cube_def.g.dart';

/// Defines the properties of a hypercube.
/// For more information about the definition of a hypercube, see _Generic object_.
abstract class HyperCubeDef implements Built<HyperCubeDef, HyperCubeDefBuilder> {

 static Serializer<HyperCubeDef> get serializer => _$hyperCubeDefSerializer;

  /// Name of the alternate state.
  /// Default is current selections _$_ .
  /// Original name: qStateName
  @nullable
  String get stateName;

  /// Array of dimensions.
  /// Original name: qDimensions
  @nullable
  BuiltList<NxCell> get dimensions;

  /// Array of measures.
  /// Original name: qMeasures
  @nullable
  BuiltList<NxCell> get measures;

  /// Defines the sort order of the columns in the hypercube.
  /// Column numbers are separated by a comma.
  /// Example: [1,0,2] means that the first column to be sorted should be the column 1, followed by the column 0 and the column 2.
  /// The default sort order is the order in which the dimensions and measures have been defined in the hypercube. By default, the pseudo-dimension (if any) is the most to the right in the array.
  /// The index of the pseudo-dimension (if any) is -1.
  /// Pseudo dimensions only apply for pivot tables with more than one measure.
  /// A pseudo dimension groups together the measures defined in a pivot table. You can neither collapse/expand a pseudo dimension nor make any selections in it.
  /// Stacked pivot tables can only contain one measure.
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

  /// Initial data set.
  /// Original name: qInitialDataFetch
  @nullable
  BuiltList<NxCell> get initialDataFetch;

  /// 
  /// One of:
  /// * N or DATA_REDUCTION_NONE
  /// * D1 or DATA_REDUCTION_ONEDIM
  /// * S or DATA_REDUCTION_SCATTERED
  /// * C or DATA_REDUCTION_CLUSTERED
  /// * ST or DATA_REDUCTION_STACKED
  /// Original name: qReductionMode
  @nullable
  String get reductionMode;

  /// Defines the way the data are handled internally by the engine.
  /// Default value is _DATA_MODE_STRAIGHT_ .
  /// A pivot table can contain several dimensions and measures whereas a stacked pivot table can contain several dimensions but only one measure.
  /// 
  /// One of:
  /// * S or DATA_MODE_STRAIGHT
  /// * P or DATA_MODE_PIVOT
  /// * K or DATA_MODE_PIVOT_STACK
  /// * T or DATA_MODE_TREE
  /// Original name: qMode
  @nullable
  String get mode;

  /// Original name: qPseudoDimPos
  @nullable
  int get pseudoDimPos;

  /// Number of left dimensions.
  /// Default value is -1. In that case, all dimensions are left dimensions.
  /// Hidden dimensions (e.g. due to unfulfilled calc condition on dimension level) is still counted in this context.
  /// The index related to each left dimension depends on the position of the pseudo dimension (if any).
  /// For example, a pivot table with:
  /// * Four dimensions in the following order: Country, City, Product and Category.
  /// * One pseudo dimension in position 1 (the position is defined in _qInterColumnSortOrder_ )
  /// _qInterColumnSortOrder_ is (0,-1,1,2,3).
  /// * Three left dimensions ( _qNoOfLeftDims_ is set to 3).
  /// 
  /// implies that:
  /// * The index 0 corresponds to the left dimension Country.
  /// * The index 1 corresponds to the pseudo dimension.
  /// * The index 2 corresponds to the left dimension City.
  /// * Product and Category are top dimensions.
  /// 
  /// Another example:
  /// * Four dimensions in the following order: Country, City, Product and Category.
  /// * Three left dimensions ( _qNoOfLeftDims_ is set to 3).
  /// * One pseudo dimension.
  /// * The property _qInterColumnSortOrder_ is left empty.
  /// 
  /// Implies that:
  /// * The index 0 corresponds to the left dimension Country.
  /// * The index 1 corresponds to the left dimension City.
  /// * The index 2 corresponds to the left dimension Product.
  /// * Category is a top dimension.
  /// * The pseudo dimension is a top dimension.
  /// Original name: qNoOfLeftDims
  @nullable
  int get noOfLeftDims;

  /// If this property is set to true, the cells are always expanded. It implies that it is not possible to collapse any cells.
  /// The default value is false.
  /// Original name: qAlwaysFullyExpanded
  @nullable
  bool get alwaysFullyExpanded;

  /// Maximum number of cells for an initial data fetch (set in _qInitialDataFetch_ ) when in stacked mode ( _qMode_ is K).
  /// The default value is 5000.
  /// Original name: qMaxStackedCells
  @nullable
  int get maxStackedCells;

  /// If this property is set to true, the missing symbols (if any) are replaced by 0 if the value is a numeric and by an empty string if the value is a string.
  /// The default value is false.
  /// Original name: qPopulateMissing
  @nullable
  bool get populateMissing;

  /// If set to true, the total (if any) is shown on the first row.
  /// The default value is false.
  /// Original name: qShowTotalsAbove
  @nullable
  bool get showTotalsAbove;

  /// This property applies for pivot tables and allows to change the layout of the table. An indentation is added to the beginning of each row.
  /// The default value is false.
  /// Original name: qIndentMode
  @nullable
  bool get indentMode;

  /// Specifies a calculation condition, which must be fulfilled for the hypercube to be (re)calculated.
  /// As long as the condition is not met, the engine does not perform a new calculation.
  /// This property is optional. By default, there is no calculation condition.
  /// Original name: qCalcCond
  @nullable
  ValueExpr get calcCond;

  /// To enable the sorting by ascending or descending order in the values of a measure.
  /// This property applies to pivot tables and stacked pivot tables.
  /// In the case of a pivot table, the measure or pseudo dimension should be defined as a top dimension. The sorting is restricted to the values of the first measure in a pivot table.
  /// Original name: qSortbyYValue
  @nullable
  int get sortbyYValue;

  /// Title of the hypercube, for example the title of a chart.
  /// Original name: qTitle
  @nullable
  StringExpr get title;

  /// Specifies a calculation condition object.
  /// If CalcCondition.Cond is not fulfilled, the hypercube is not calculated and CalcCondition.Msg is evaluated.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCondition
  @nullable
  NxCalcCond get calcCondition;

  /// The order of the columns.
  /// Original name: qColumnOrder
  @nullable
  BuiltList<NxCell> get columnOrder;

  factory HyperCubeDef([updates(HyperCubeDefBuilder b)]) = _$HyperCubeDef;

  HyperCubeDef._();
}
