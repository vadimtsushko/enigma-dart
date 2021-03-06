/// This file was autogenerated

library nx_library_dimension;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_library_dimension.g.dart';

abstract class NxLibraryDimension
    implements Built<NxLibraryDimension, NxLibraryDimensionBuilder> {
  static Serializer<NxLibraryDimension> get serializer =>
      _$nxLibraryDimensionSerializer;

  /// Information about the grouping.
  ///
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  @BuiltValueField(wireName: 'qGrouping')
  String get grouping;

  /// Array of dimension names.
  /// Original name: qFieldDefs
  @nullable
  @BuiltValueField(wireName: 'qFieldDefs')
  BuiltList<String> get fieldDefs;

  /// Array of dimension labels.
  /// Original name: qFieldLabels
  @nullable
  @BuiltValueField(wireName: 'qFieldLabels')
  BuiltList<String> get fieldLabels;

  /// Original name: qLabelExpression
  @nullable
  @BuiltValueField(wireName: 'qLabelExpression')
  String get labelExpression;

  factory NxLibraryDimension([updates(NxLibraryDimensionBuilder b)]) =
      _$NxLibraryDimension;

  factory NxLibraryDimension.init(
      {String grouping,
      BuiltList<String> fieldDefs,
      BuiltList<String> fieldLabels,
      String labelExpression}) = _$NxLibraryDimension._;

  NxLibraryDimension._();
}
