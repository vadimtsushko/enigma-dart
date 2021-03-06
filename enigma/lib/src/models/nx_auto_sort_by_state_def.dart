/// This file was autogenerated

library nx_auto_sort_by_state_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_auto_sort_by_state_def.g.dart';

abstract class NxAutoSortByStateDef
    implements Built<NxAutoSortByStateDef, NxAutoSortByStateDefBuilder> {
  static Serializer<NxAutoSortByStateDef> get serializer =>
      _$nxAutoSortByStateDefSerializer;

  /// This parameter applies to list objects.
  /// If the number of selected values in the list object is greater than the value set in _qDisplayNumberOfRows_ , the selected lines are promoted at the top of the list object.
  /// If _qDisplayNumberOfRows_ is set to a negative value or to 0, the sort by state is disabled.
  /// Original name: qDisplayNumberOfRows
  @nullable
  @BuiltValueField(wireName: 'qDisplayNumberOfRows')
  int get displayNumberOfRows;

  factory NxAutoSortByStateDef([updates(NxAutoSortByStateDefBuilder b)]) =
      _$NxAutoSortByStateDef;

  factory NxAutoSortByStateDef.init({int displayNumberOfRows}) =
      _$NxAutoSortByStateDef._;

  NxAutoSortByStateDef._();
}
