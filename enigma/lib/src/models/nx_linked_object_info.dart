/// This file was autogenerated

library nx_linked_object_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
part 'nx_linked_object_info.g.dart';

abstract class NxLinkedObjectInfo
    implements Built<NxLinkedObjectInfo, NxLinkedObjectInfoBuilder> {
  static Serializer<NxLinkedObjectInfo> get serializer =>
      _$nxLinkedObjectInfoSerializer;

  /// Identifier of the root object.
  /// If the linked object is a child, the root identifier is the identifier of the parent.
  /// If the linked object is an app object, the root identifier is the same than the identifier of the linked object since the linked object is a root object.
  /// Original name: qRootId
  @nullable
  @BuiltValueField(wireName: 'qRootId')
  String get rootId;

  /// Information about the linked object.
  /// Original name: qInfo
  @nullable
  @BuiltValueField(wireName: 'qInfo')
  NxInfo get info;

  factory NxLinkedObjectInfo([updates(NxLinkedObjectInfoBuilder b)]) =
      _$NxLinkedObjectInfo;

  factory NxLinkedObjectInfo.init({String rootId, NxInfo info}) =
      _$NxLinkedObjectInfo._;

  NxLinkedObjectInfo._();
}
