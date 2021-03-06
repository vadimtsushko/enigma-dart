library schema;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'schema_type.dart';
import 'service.dart';
part 'schema.g.dart';

abstract class Schema implements Built<Schema, SchemaBuilder> {

  static Serializer<Schema> get serializer => _$schemaSerializer;

  BuiltMap<String,SchemaType> get definitions;

  BuiltMap<String,Service> get services;

  factory Schema([updates(SchemaBuilder b)]) = _$Schema;
  Schema._();
}
  
  