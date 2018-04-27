/// This file was autogenerated

library nx_meta;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_meta.g.dart';

/// Layout for _NxMetaDef_.
abstract class NxMeta implements Built<NxMeta, NxMetaBuilder> {

 static Serializer<NxMeta> get serializer => _$nxMetaSerializer;

  /// Name.
  /// This property is optional.
  /// Original name: qName
  @nullable
  String get name;

  factory NxMeta([updates(NxMetaBuilder b)]) = _$NxMeta;

  factory NxMeta.init({String name}) = _$NxMeta._;

  NxMeta._();
}
