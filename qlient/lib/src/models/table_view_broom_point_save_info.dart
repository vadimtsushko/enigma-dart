/// This file was autogenerated

library table_view_broom_point_save_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'point.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'table_view_broom_point_save_info.g.dart';

abstract class TableViewBroomPointSaveInfo implements Built<TableViewBroomPointSaveInfo, TableViewBroomPointSaveInfoBuilder> {

 static Serializer<TableViewBroomPointSaveInfo> get serializer => _$tableViewBroomPointSaveInfoSerializer;

  /// Information about the position of the broom point.
  /// Original name: qPos
  @nullable
  Point get pos;

  /// Name of the table.
  /// Original name: qTable
  @nullable
  String get table;

  /// List of fields in the table.
  /// Original name: qFields
  @nullable
  BuiltList<NxCell> get fields;

  factory TableViewBroomPointSaveInfo([updates(TableViewBroomPointSaveInfoBuilder b)]) = _$TableViewBroomPointSaveInfo;

  factory TableViewBroomPointSaveInfo.init({Point pos, String table, BuiltList<NxCell> fields}) = _$TableViewBroomPointSaveInfo._;

  TableViewBroomPointSaveInfo._();
}
