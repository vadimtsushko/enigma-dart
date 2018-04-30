/// This file was autogenerated

library app_object_list_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
part 'app_object_list_def.g.dart';

/// Defines the list of objects in an app.
/// <div class=note>An app object is a generic object created at app level.</div>
abstract class AppObjectListDef
    implements Built<AppObjectListDef, AppObjectListDefBuilder> {
  static Serializer<AppObjectListDef> get serializer =>
      _$appObjectListDefSerializer;

  /// Type of the app list.
  /// Original name: qType
  @nullable
  @BuiltValueField(wireName: 'qType')
  String get type;

  /// Data that you want to include in the app list definition.
  /// You need to enter the paths to the information you want to retrieve.
  /// Original name: qData
  @nullable
  @BuiltValueField(wireName: 'qData')
  JsonObject get data;

  factory AppObjectListDef([updates(AppObjectListDefBuilder b)]) =
      _$AppObjectListDef;

  factory AppObjectListDef.init({String type, JsonObject data}) =
      _$AppObjectListDef._;

  AppObjectListDef._();
}