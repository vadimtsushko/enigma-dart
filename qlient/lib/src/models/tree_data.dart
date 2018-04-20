/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_validation_error.dart';
import 'nx_tree_dimension_info.dart';
import 'nx_cell_position.dart';

/// Renders the properties of a TreeData object. Is the layout for TreeDataDef.
/// For more information about the definition of TreeData, see _Generic object_.
/// <div class=note>To retrieve data from the TreeData object, use the method called GetHyperCubeTreeData.</div>
class TreeData {
  /// Name of the alternate state.
  /// Default is current selections _$_ .
  /// Original name: qStateName
  String stateName;
  /// The total number of nodes on each dimension.
  /// Original name: qNodesOnDim
  null nodesOnDim;
  /// This parameter is optional and is displayed in case of error.
  /// Original name: qError
  NxValidationError error;
  /// Information on the dimension.
  /// Original name: qDimensionInfo
  null dimensionInfo;
  /// Defines the order of the dimenion levels/columns in the TreeData object.
  /// Column numbers are separated by a comma.
  /// Example: [1,0,2] means that the first level in the tree structure is dimension 1, followed by dimension 0 and dimension 2.
  /// Original name: qEffectiveInterColumnSortOrder
  null effectiveInterColumnSortOrder;
  /// True if other row exists.
  /// Original name: qHasOtherValues
  bool hasOtherValues;
  /// Title of the TreeData object, for example the title of a chart.
  /// Original name: qTitle
  String title;
  /// Position of the last expended cell.
  /// This property is optional.
  /// Original name: qLastExpandedPos
  NxCellPosition lastExpandedPos;
  /// The message displayed if calculation condition is not fulfilled.
  /// Original name: qCalcCondMsg
  String calcCondMsg;
}

