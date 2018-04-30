/// This file was autogenerated

library dimension_list_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
part 'dimension_list_def.g.dart';

/// Defines the lists of dimensions.
abstract class DimensionListDef
    implements Built<DimensionListDef, DimensionListDefBuilder> {
  static Serializer<DimensionListDef> get serializer =>
      _$dimensionListDefSerializer;

  /// Type of the list.
  /// Original name: qType
  @nullable
  @BuiltValueField(wireName: 'qType')
  String get type;

  /// Data
  /// Original name: qData
  @nullable
  @BuiltValueField(wireName: 'qData')
  JsonObject get data;

  factory DimensionListDef([updates(DimensionListDefBuilder b)]) =
      _$DimensionListDef;

  factory DimensionListDef.init({String type, JsonObject data}) =
      _$DimensionListDef._;

  DimensionListDef._();
}