/// This file was autogenerated

library nx_tree_node;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_tree_value.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_tree_node.dart';
import 'nx_attribute_expression_values.dart';
import 'nx_attribute_dim_values.dart';
part 'nx_tree_node.g.dart';

/// Represents a dimension in the tree.
abstract class NxTreeNode implements Built<NxTreeNode, NxTreeNodeBuilder> {
  static Serializer<NxTreeNode> get serializer => _$nxTreeNodeSerializer;

  /// The text version of the value, if available.
  /// Original name: qText
  @nullable
  @BuiltValueField(wireName: 'qText')
  String get text;

  /// Element number.
  /// Original name: qElemNo
  @nullable
  @BuiltValueField(wireName: 'qElemNo')
  int get elemNo;

  /// A generated number applicable to this page only. Used so that children can easily identify who their parents are.
  /// Original name: qNodeNr
  @nullable
  @BuiltValueField(wireName: 'qNodeNr')
  int get nodeNr;

  /// The qNodeNr of this node's parent for the current page.
  /// Original name: qParentNode
  @nullable
  @BuiltValueField(wireName: 'qParentNode')
  int get parentNode;

  /// Row index in the data matrix.
  /// The indexing starts from 0.
  /// Original name: qRow
  @nullable
  @BuiltValueField(wireName: 'qRow')
  int get row;

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
  @BuiltValueField(wireName: 'qType')
  String get type;

  /// The measures for this node.
  /// Original name: qValues
  @nullable
  @BuiltValueField(wireName: 'qValues')
  BuiltList<NxTreeValue> get values;

  /// The children of this node in the tree structure.
  /// Original name: qNodes
  @nullable
  @BuiltValueField(wireName: 'qNodes')
  BuiltList<NxTreeNode> get nodes;

  /// Attribute expression values.
  /// Original name: qAttrExps
  @nullable
  @BuiltValueField(wireName: 'qAttrExps')
  NxAttributeExpressionValues get attrExps;

  /// Attribute dimension values.
  /// Original name: qAttrDims
  @nullable
  @BuiltValueField(wireName: 'qAttrDims')
  NxAttributeDimValues get attrDims;

  factory NxTreeNode([updates(NxTreeNodeBuilder b)]) = _$NxTreeNode;

  factory NxTreeNode.init(
      {String text,
      int elemNo,
      int nodeNr,
      int parentNode,
      int row,
      String type,
      BuiltList<NxTreeValue> values,
      BuiltList<NxTreeNode> nodes,
      NxAttributeExpressionValues attrExps,
      NxAttributeDimValues attrDims}) = _$NxTreeNode._;

  NxTreeNode._();
}
