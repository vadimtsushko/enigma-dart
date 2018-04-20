/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_inline_dimension_def.dart';
import 'nx_measure.dart';
import 'other_total_spec_prop.dart';
import 'string_expr.dart';
import 'nx_calc_cond.dart';
import 'nx_attr_expr_def.dart';
import 'nx_attr_dim_def.dart';

class NxTreeDimensionDef {
  /// Refers to a dimension stored in the library.
  /// Original name: qLibraryId
  String libraryId;
  /// Refers to a dimension.
  /// Original name: qDef
  NxInlineDimensionDef def;
  /// List of measures.
  /// Original name: qValueExprs
  null valueExprs;
  /// If set to true, no null values are returned.
  /// Original name: qNullSuppression
  bool nullSuppression;
  /// Sets the dimension limits. Each dimension of a hypercube is configured separately.
  /// Defines if some values (grouped as _Others_ ) should be grouped together in the visualization.
  /// For example in a pie chart all values lower than 200 could be grouped together.
  /// Original name: qOtherTotalSpec
  OtherTotalSpecProp otherTotalSpec;
  /// If set to true, all dimension values are shown.
  /// Original name: qShowAll
  bool showAll;
  /// This property is used when some dimension limits are set.
  /// Label of the _Others_ group. The default label is _Others_ .
  /// Example:
  /// _"qOtherLabel":"= &lt;label&gt;"_
  /// or
  /// _"qOtherLabel":{"qExpr":"= &lt;label&gt;"}_
  /// Where:
  /// * &lt; _label_ &gt; is the label of the _Others_ group.
  /// Original name: qOtherLabel
  StringExpr otherLabel;
  /// If this property is set, the total of the calculated values is returned.
  /// The default label is _Total_ .
  /// Example:
  /// _"qTotalLabel":"= &lt;label&gt;"_
  /// or
  /// _"qTotalLabel":{"qExpr":"= &lt;label&gt;"}_
  /// Where:
  /// * &lt; _label_ &gt; is the label of the _Total_ group.
  /// Original name: qTotalLabel
  StringExpr totalLabel;
  /// Specifies a calculation condition object.
  /// If CalcCondition.Cond is not fulfilled, the dimension is excluded from the calculation and CalcCondition.Msg is evaluated.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCondition
  NxCalcCond calcCondition;
  /// List of attribute expressions.
  /// Original name: qAttributeExpressions
  null attributeExpressions;
  /// List of attribute dimensions.
  /// Original name: qAttributeDimensions
  null attributeDimensions;
}

