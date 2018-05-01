/// This file was autogenerated

library nx_tree_data_option;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_page_tree_node.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_page_tree_level.dart';
part 'nx_tree_data_option.g.dart';

/// Specifies all the paging filters needed to define the tree to be fetched.
abstract class NxTreeDataOption
    implements Built<NxTreeDataOption, NxTreeDataOptionBuilder> {
  static Serializer<NxTreeDataOption> get serializer =>
      _$nxTreeDataOptionSerializer;

  /// Maximum number of nodes in the tree. If this limit is exceeded, no nodes are returned. All nodes are counted.
  /// Original name: qMaxNbrOfNodes
  @nullable
  @BuiltValueField(wireName: 'qMaxNbrOfNodes')
  int get maxNbrOfNodes;

  /// Defines areas of the tree to be fetched. Areas must be defined left to right.
  /// Original name: qTreeNodes
  @nullable
  @BuiltValueField(wireName: 'qTreeNodes')
  BuiltList<NxPageTreeNode> get treeNodes;

  /// Filters out complete dimensions from the fetched tree.
  /// Original name: qTreeLevels
  @nullable
  @BuiltValueField(wireName: 'qTreeLevels')
  NxPageTreeLevel get treeLevels;

  factory NxTreeDataOption([updates(NxTreeDataOptionBuilder b)]) =
      _$NxTreeDataOption;

  factory NxTreeDataOption.init(
      {int maxNbrOfNodes,
      BuiltList<NxPageTreeNode> treeNodes,
      NxPageTreeLevel treeLevels}) = _$NxTreeDataOption._;

  NxTreeDataOption._();
}
