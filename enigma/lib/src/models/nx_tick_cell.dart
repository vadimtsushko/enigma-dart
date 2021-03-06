/// This file was autogenerated

library nx_tick_cell;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_tick_cell.g.dart';

abstract class NxTickCell implements Built<NxTickCell, NxTickCellBuilder> {
  static Serializer<NxTickCell> get serializer => _$nxTickCellSerializer;

  /// Tick's label.
  /// Original name: qText
  @nullable
  @BuiltValueField(wireName: 'qText')
  String get text;

  /// Start value.
  /// Original name: qStart
  @nullable
  @BuiltValueField(wireName: 'qStart')
  num get start;

  /// End value.
  /// Original name: qEnd
  @nullable
  @BuiltValueField(wireName: 'qEnd')
  num get end;

  factory NxTickCell([updates(NxTickCellBuilder b)]) = _$NxTickCell;

  factory NxTickCell.init({String text, num start, num end}) = _$NxTickCell._;

  NxTickCell._();
}
