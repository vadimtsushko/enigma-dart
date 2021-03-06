/// This file was autogenerated

library alternate_state_data;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'bookmark_field_item.dart';
import 'package:built_collection/built_collection.dart';
part 'alternate_state_data.g.dart';

abstract class AlternateStateData
    implements Built<AlternateStateData, AlternateStateDataBuilder> {
  static Serializer<AlternateStateData> get serializer =>
      _$alternateStateDataSerializer;

  /// Name of the alternate state.
  /// Default is current selections: $
  /// Original name: qStateName
  @nullable
  @BuiltValueField(wireName: 'qStateName')
  String get stateName;

  /// List of the selections.
  /// Original name: qFieldItems
  @nullable
  @BuiltValueField(wireName: 'qFieldItems')
  BuiltList<BookmarkFieldItem> get fieldItems;

  factory AlternateStateData([updates(AlternateStateDataBuilder b)]) =
      _$AlternateStateData;

  factory AlternateStateData.init(
      {String stateName,
      BuiltList<BookmarkFieldItem> fieldItems}) = _$AlternateStateData._;

  AlternateStateData._();
}
