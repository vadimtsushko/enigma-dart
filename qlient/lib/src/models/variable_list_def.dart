/// This file was autogenerated

library variable_list_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
part 'variable_list_def.g.dart';

/// Defines the list of variables in an app.
abstract class VariableListDef implements Built<VariableListDef, VariableListDefBuilder> {

 static Serializer<VariableListDef> get serializer => _$variableListDefSerializer;

  /// Type of the list.
  /// Original name: qType
  @nullable
  String get type;

  /// Shows the reserved variables if set to true.
  /// Original name: qShowReserved
  @nullable
  bool get showReserved;

  /// Shows the system variables if set to true.
  /// Original name: qShowConfig
  @nullable
  bool get showConfig;

  /// Data
  /// Original name: qData
  @nullable
  JsonObject get data;

  factory VariableListDef([updates(VariableListDefBuilder b)]) = _$VariableListDef;

  factory VariableListDef.init({String type, bool showReserved, bool showConfig, JsonObject data}) = _$VariableListDef._;

  VariableListDef._();
}
