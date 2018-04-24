/// This file was autogenerated

library database_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'database_info.g.dart';

abstract class DatabaseInfo implements Built<DatabaseInfo, DatabaseInfoBuilder> {

 static Serializer<DatabaseInfo> get serializer => _$databaseInfoSerializer;

  /// Name of the product accessed by the provider.
  /// Original name: qDBMSName
  @nullable
  String get dBMSName;

  /// If set to true, it means that the data source contains some databases.
  /// Original name: qDBUsage
  @nullable
  bool get dBUsage;

  /// If set to true, it means that the data source contains some owners.
  /// Original name: qOwnerUsage
  @nullable
  bool get ownerUsage;

  /// Character string used after the database name.
  /// Example with separator " **.** ":
  /// FROM LinkedTablesData.dbo.Months
  /// Where:
  /// * **LinkedTablesData** is the database name
  /// * **dbo** is the owner name
  /// * **Months** is the table name
  /// Original name: qDBSeparator
  @nullable
  String get dBSeparator;

  /// Character string used after the owner name.
  /// Example with separator " **.** ":
  /// FROM LinkedTablesData.dbo.Months
  /// Where:
  /// * **LinkedTablesData** is the database name
  /// * **dbo** is the owner name
  /// * **Months** is the table name
  /// Original name: qOwnerSeparator
  @nullable
  String get ownerSeparator;

  /// If set to true, it means that the database is displayed first, before the owners and tables.
  /// Original name: qDBFirst
  @nullable
  bool get dBFirst;

  /// Prefix used with field, database or owner names that contain special characters or keywords.
  /// Original name: qQuotePreffix
  @nullable
  String get quotePreffix;

  /// Suffix used with field, database or owner names that contain special characters or keywords.
  /// Original name: qQuoteSuffix
  @nullable
  String get quoteSuffix;

  /// List of the special characters.
  /// Original name: qSpecialChars
  @nullable
  String get specialChars;

  /// Name of the default database.
  /// Original name: qDefaultDatabase
  @nullable
  String get defaultDatabase;

  /// List of the script keywords.
  /// Original name: qKeywords
  @nullable
  BuiltList<NxCell> get keywords;

  factory DatabaseInfo([updates(DatabaseInfoBuilder b)]) = _$DatabaseInfo;

  DatabaseInfo._();
}
