/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_pivot_dimension_cell.dart';
import 'nx_pivot_dimension_cell.dart';
import 'import_'nx_pivot_value_point_dart';.dart';
import 'rect.dart';

class NxPivotPage {
  /// Information about the left dimension values of a pivot table.
  List<NxPivotDimensionCell> left;
  /// Information about the top dimension values of a pivot table. If there is no top dimension in the pivot table, information about the measures are given.
  List<NxPivotDimensionCell> top;
  /// Array of data.
  List<List<import 'nx_pivot_value_point.dart';>> data;
  /// Size and offset of the data in the matrix.
  Rect area;
}

