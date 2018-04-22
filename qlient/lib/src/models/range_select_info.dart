/// This file was autogenerated

library range_select_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'range_select_info.g.dart';

abstract class RangeSelectInfo implements Built<RangeSelectInfo, RangeSelectInfoBuilder> {

 static Serializer<RangeSelectInfo> get serializer => _$rangeSelectInfoSerializer;

  /// Lowest value in the range.
  /// Original name: qRangeLo
  @nullable
  num get rangeLo;

  /// Highest value in the range.
  /// Original name: qRangeHi
  @nullable
  num get rangeHi;

  /// Label of the measure.
  /// Original name: qMeasure
  @nullable
  String get measure;

  factory RangeSelectInfo([updates(RangeSelectInfoBuilder b)]) = _$RangeSelectInfo;

  RangeSelectInfo._();
}
