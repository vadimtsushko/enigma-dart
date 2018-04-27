/// This file was autogenerated

library nx_stacked_pivot_cell;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_attribute_expression_values.dart';
import 'nx_attribute_dim_values.dart';
part 'nx_stacked_pivot_cell.g.dart';

abstract class NxStackedPivotCell
    implements Built<NxStackedPivotCell, NxStackedPivotCellBuilder> {
  static Serializer<NxStackedPivotCell> get serializer =>
      _$nxStackedPivotCellSerializer;

  /// Some text.
  /// Original name: qText
  @nullable
  String get text;

  /// Rank number of the value.
  /// If set to -1, it means that the value is not an element number.
  /// Original name: qElemNo
  @nullable
  int get elemNo;

  /// Value of the cell.
  /// Is set to _NaN_ , if the value is not a number.
  /// Original name: qValue
  @nullable
  num get value;

  /// If set to true, it means that the cell can be expanded.
  /// This parameter is not returned if it is set to false.
  /// Original name: qCanExpand
  @nullable
  bool get canExpand;

  /// If set to true, it means that the cell can be collapsed.
  /// This parameter is not returned if it is set to false.
  /// Original name: qCanCollapse
  @nullable
  bool get canCollapse;

  /// Type of the cell.
  ///
  /// One of:
  /// * V or NX_DIM_CELL_VALUE
  /// * E or NX_DIM_CELL_EMPTY
  /// * N or NX_DIM_CELL_NORMAL
  /// * T or NX_DIM_CELL_TOTAL
  /// * O or NX_DIM_CELL_OTHER
  /// * A or NX_DIM_CELL_AGGR
  /// * P or NX_DIM_CELL_PSEUDO
  /// * R or NX_DIM_CELL_ROOT
  /// * U or NX_DIM_CELL_NULL
  /// * G or NX_DIM_CELL_GENERATED
  /// Original name: qType
  @nullable
  String get type;

  /// Total of the positive values in the current group of cells.
  /// Original name: qMaxPos
  @nullable
  num get maxPos;

  /// Total of the negative values in the current group of cells.
  /// Original name: qMinNeg
  @nullable
  num get minNeg;

  /// Number of elements that are part of the previous tail.
  /// Original name: qUp
  @nullable
  int get up;

  /// Number of elements that are part of the next tail.
  /// Original name: qDown
  @nullable
  int get down;

  /// Row index in the data matrix.
  /// The indexing starts from 0.
  /// Original name: qRow
  @nullable
  int get row;

  /// Information about sub nodes (or sub cells).
  /// The array is empty _[ ]_ when there are no sub nodes.
  /// Original name: qSubNodes
  @nullable
  BuiltList<NxCell> get subNodes;

  /// Attribute expressions values.
  /// Original name: qAttrExps
  @nullable
  NxAttributeExpressionValues get attrExps;

  /// Attribute dimensions values.
  /// Original name: qAttrDims
  @nullable
  NxAttributeDimValues get attrDims;

  factory NxStackedPivotCell([updates(NxStackedPivotCellBuilder b)]) =
      _$NxStackedPivotCell;

  factory NxStackedPivotCell.init(
      {String text,
      int elemNo,
      num value,
      bool canExpand,
      bool canCollapse,
      String type,
      num maxPos,
      num minNeg,
      int up,
      int down,
      int row,
      BuiltList<NxCell> subNodes,
      NxAttributeExpressionValues attrExps,
      NxAttributeDimValues attrDims}) = _$NxStackedPivotCell._;

  NxStackedPivotCell._();
}
