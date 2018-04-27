/// This file was autogenerated

library database;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'database.g.dart';

abstract class Database implements Built<Database, DatabaseBuilder> {

 static Serializer<Database> get serializer => _$databaseSerializer;

  /// Name of the database.
  /// Original name: qName
  @nullable
  String get name;

  /// Is set to true if the database is set by default.
  /// Original name: qIsDefault
  @nullable
  bool get isDefault;

  factory Database([updates(DatabaseBuilder b)]) = _$Database;

  factory Database.init({String name, bool isDefault}) = _$Database._;

  Database._();
}
