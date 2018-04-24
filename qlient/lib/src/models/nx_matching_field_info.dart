/// This file was autogenerated

library nx_matching_field_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_matching_field_info.g.dart';

abstract class NxMatchingFieldInfo implements Built<NxMatchingFieldInfo, NxMatchingFieldInfoBuilder> {

 static Serializer<NxMatchingFieldInfo> get serializer => _$nxMatchingFieldInfoSerializer;

  /// Name of the field.
  /// Original name: qName
  @nullable
  String get name;

  /// List of tags.
  /// Original name: qTags
  @nullable
  BuiltList<NxCell> get tags;

  factory NxMatchingFieldInfo([updates(NxMatchingFieldInfoBuilder b)]) = _$NxMatchingFieldInfo;

  NxMatchingFieldInfo._();
}
