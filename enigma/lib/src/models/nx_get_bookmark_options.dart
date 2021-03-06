/// This file was autogenerated

library nx_get_bookmark_options;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
part 'nx_get_bookmark_options.g.dart';

abstract class NxGetBookmarkOptions
    implements Built<NxGetBookmarkOptions, NxGetBookmarkOptionsBuilder> {
  static Serializer<NxGetBookmarkOptions> get serializer =>
      _$nxGetBookmarkOptionsSerializer;

  /// List of object types.
  /// Original name: qTypes
  @nullable
  @BuiltValueField(wireName: 'qTypes')
  BuiltList<String> get types;

  /// Set of data.
  /// Original name: qData
  @nullable
  @BuiltValueField(wireName: 'qData')
  JsonObject get data;

  factory NxGetBookmarkOptions([updates(NxGetBookmarkOptionsBuilder b)]) =
      _$NxGetBookmarkOptions;

  factory NxGetBookmarkOptions.init(
      {BuiltList<String> types, JsonObject data}) = _$NxGetBookmarkOptions._;

  NxGetBookmarkOptions._();
}
