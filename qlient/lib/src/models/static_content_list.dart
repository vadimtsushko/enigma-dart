/// This file was autogenerated

library static_content_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'static_content_list.g.dart';

abstract class StaticContentList implements Built<StaticContentList, StaticContentListBuilder> {

 static Serializer<StaticContentList> get serializer => _$staticContentListSerializer;

  /// Information about the list of content files.
  /// Original name: qItems
  @nullable
  BuiltList<NxCell> get items;

  factory StaticContentList([updates(StaticContentListBuilder b)]) = _$StaticContentList;

  StaticContentList._();
}
