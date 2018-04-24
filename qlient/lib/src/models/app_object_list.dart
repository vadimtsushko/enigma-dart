/// This file was autogenerated

library app_object_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'app_object_list.g.dart';

/// Lists the app objects. Is the layout for _AppObjectListDef_.
/// <div class=note>An app object is a generic object created at app level.</div>
abstract class AppObjectList implements Built<AppObjectList, AppObjectListBuilder> {

 static Serializer<AppObjectList> get serializer => _$appObjectListSerializer;

  /// Information about the list of dimensions.
  /// Original name: qItems
  @nullable
  BuiltList<NxCell> get items;

  factory AppObjectList([updates(AppObjectListBuilder b)]) = _$AppObjectList;

  AppObjectList._();
}
