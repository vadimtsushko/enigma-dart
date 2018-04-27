/// This file was autogenerated

library nx_state_counts;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_state_counts.g.dart';

abstract class NxStateCounts
    implements Built<NxStateCounts, NxStateCountsBuilder> {
  static Serializer<NxStateCounts> get serializer => _$nxStateCountsSerializer;

  /// Number of values in locked state.
  /// Original name: qLocked
  @nullable
  int get locked;

  /// Number of values in selected state.
  /// Original name: qSelected
  @nullable
  int get selected;

  /// Number of values in optional state.
  /// Original name: qOption
  @nullable
  int get option;

  /// Number of values in deselected state.
  /// Original name: qDeselected
  @nullable
  int get deselected;

  /// Number of values in alternative state.
  /// Original name: qAlternative
  @nullable
  int get alternative;

  /// Number of values in excluded state.
  /// Original name: qExcluded
  @nullable
  int get excluded;

  /// Number of values in selected excluded state.
  /// Original name: qSelectedExcluded
  @nullable
  int get selectedExcluded;

  /// Number of values in locked excluded state.
  /// Original name: qLockedExcluded
  @nullable
  int get lockedExcluded;

  factory NxStateCounts([updates(NxStateCountsBuilder b)]) = _$NxStateCounts;

  factory NxStateCounts.init(
      {int locked,
      int selected,
      int option,
      int deselected,
      int alternative,
      int excluded,
      int selectedExcluded,
      int lockedExcluded}) = _$NxStateCounts._;

  NxStateCounts._();
}
