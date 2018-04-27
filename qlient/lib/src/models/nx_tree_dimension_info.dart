/// This file was autogenerated

library nx_tree_dimension_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_state_counts.dart';
import 'nx_validation_error.dart';
import 'field_attributes.dart';
part 'nx_tree_dimension_info.g.dart';

abstract class NxTreeDimensionInfo
    implements Built<NxTreeDimensionInfo, NxTreeDimensionInfoBuilder> {
  static Serializer<NxTreeDimensionInfo> get serializer =>
      _$nxTreeDimensionInfoSerializer;

  /// Corresponds to the label of the dimension that is selected.
  /// If the label is not defined then the field name is used.
  /// Original name: qFallbackTitle
  @nullable
  String get fallbackTitle;

  /// Length of the longest value in the field.
  /// Original name: qApprMaxGlyphCount
  @nullable
  int get apprMaxGlyphCount;

  /// Number of distinct field values.
  /// Original name: qCardinal
  @nullable
  int get cardinal;

  /// Is set to true if the field is locked.
  /// Original name: qLocked
  @nullable
  bool get locked;

  /// Sort indicator.
  /// The default value is no sorting.
  /// This parameter is optional.
  ///
  /// One of:
  /// * N or NX_SORT_INDICATE_NONE
  /// * A or NX_SORT_INDICATE_ASC
  /// * D or NX_SORT_INDICATE_DESC
  /// Original name: qSortIndicator
  @nullable
  String get sortIndicator;

  /// Array of dimension labels.
  /// Contains the labels of all dimensions in a hierarchy group (for example the labels of all dimensions in a drill down group).
  /// Original name: qGroupFallbackTitles
  @nullable
  BuiltList<NxCell> get groupFallbackTitles;

  /// Index of the dimension that is currently in use.
  /// _qGroupPos_ is set to 0 if there are no hierarchical groups (drill-down groups) or cycle groups.
  /// Original name: qGroupPos
  @nullable
  int get groupPos;

  /// Number of values in a particular state.
  /// Original name: qStateCounts
  @nullable
  NxStateCounts get stateCounts;

  /// Gives information on a field. For example, it can return the type of the field.
  /// Examples: key, text, ASCII
  /// Original name: qTags
  @nullable
  BuiltList<NxCell> get tags;

  /// This parameter is optional.
  /// Gives information on the error.
  /// Original name: qError
  @nullable
  NxValidationError get error;

  /// Binary format of the field.
  ///
  /// One of:
  /// * D or NX_DIMENSION_TYPE_DISCRETE
  /// * N or NX_DIMENSION_TYPE_NUMERIC
  /// * T or NX_DIMENSION_TYPE_TIME
  /// Original name: qDimensionType
  @nullable
  String get dimensionType;

  /// If set to true, it inverts the sort criteria in the field.
  /// Original name: qReverseSort
  @nullable
  bool get reverseSort;

  /// Defines the grouping.
  ///
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  String get grouping;

  /// If set to true, it means that the field is a semantic.
  /// Original name: qIsSemantic
  @nullable
  bool get isSemantic;

  /// Format of the field.
  /// This parameter is optional.
  /// Original name: qNumFormat
  @nullable
  FieldAttributes get numFormat;

  /// This parameter is set to true if _qNumFormat_ is set to _U_ (unknown). The engine guesses the type of the field based on the field's definition.
  /// Original name: qIsAutoFormat
  @nullable
  bool get isAutoFormat;

  /// Array of field names.
  /// Original name: qGroupFieldDefs
  @nullable
  BuiltList<NxCell> get groupFieldDefs;

  /// Minimum value.
  /// Original name: qMin
  @nullable
  num get min;

  /// Maximum value.
  /// Original name: qMax
  @nullable
  num get max;

  /// Is continuous axis used.
  /// Original name: qContinuousAxes
  @nullable
  bool get continuousAxes;

  /// Is a cyclic dimension used.
  /// Original name: qIsCyclic
  @nullable
  bool get isCyclic;

  /// Is derived field is used as a dimension.
  /// Original name: qDerivedField
  @nullable
  bool get derivedField;

  /// A List of measures to be calculated on this TreeDimension.
  /// Original name: qMeasureInfo
  @nullable
  BuiltList<NxCell> get measureInfo;

  /// List of attribute expressions.
  /// Original name: qAttrExprInfo
  @nullable
  BuiltList<NxCell> get attrExprInfo;

  /// List of attribute dimensions.
  /// Original name: qAttrDimInfo
  @nullable
  BuiltList<NxCell> get attrDimInfo;

  /// The message displayed if calculation condition is not fulfilled.
  /// Original name: qCalcCondMsg
  @nullable
  String get calcCondMsg;

  /// True if this is a calculated dimension.
  /// Original name: qIsCalculated
  @nullable
  bool get isCalculated;

  /// If set to true, it means that the field always has one and only one selected value.
  /// Original name: qIsOneAndOnlyOne
  @nullable
  bool get isOneAndOnlyOne;

  factory NxTreeDimensionInfo([updates(NxTreeDimensionInfoBuilder b)]) =
      _$NxTreeDimensionInfo;

  factory NxTreeDimensionInfo.init(
      {String fallbackTitle,
      int apprMaxGlyphCount,
      int cardinal,
      bool locked,
      String sortIndicator,
      BuiltList<NxCell> groupFallbackTitles,
      int groupPos,
      NxStateCounts stateCounts,
      BuiltList<NxCell> tags,
      NxValidationError error,
      String dimensionType,
      bool reverseSort,
      String grouping,
      bool isSemantic,
      FieldAttributes numFormat,
      bool isAutoFormat,
      BuiltList<NxCell> groupFieldDefs,
      num min,
      num max,
      bool continuousAxes,
      bool isCyclic,
      bool derivedField,
      BuiltList<NxCell> measureInfo,
      BuiltList<NxCell> attrExprInfo,
      BuiltList<NxCell> attrDimInfo,
      String calcCondMsg,
      bool isCalculated,
      bool isOneAndOnlyOne}) = _$NxTreeDimensionInfo._;

  NxTreeDimensionInfo._();
}
