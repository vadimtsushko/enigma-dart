/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'rect.dart';

/// Defines an area of the tree to be fetched.
class NxPageTreeNode {
  /// The area of the tree to be fetched. If no area is defined on a dimension, all existing nodes are included.
  /// Original name: qArea
  Rect area;
  /// When set to true, generated nodes (based on current selection) will be inserted into the returned tree even when there is no actual value. For example, suppose you are looking for hybrid car sales at all car dealerships. Normally, only dealerships where hybrid cars are sold would be part of the returned tree but with qAllValues set to true, all available dealerships will be included regardless if they sold any hybrid cars or not.
  /// Original name: qAllValues
  bool allValues;
}

