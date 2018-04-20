/// This code was autogenerated
import 'package:built_value/built_value.dart';


class NxPatch {
  /// Operation to perform.
  /// 
  /// One of:
  /// * add or Add
  /// * remove or Remove
  /// * replace or Replace
  /// Original name: qOp
  String op;
  /// Path to the property to add, remove or replace.
  /// Original name: qPath
  String path;
  /// This parameter is not used in a remove operation.
  /// Corresponds to the value of the property to add or to the new value of the property to update.
  /// Examples:
  /// "false", "2", "\"New title\""
  /// Original name: qValue
  String value;
}

