/// This file was autogenerated

library select_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'field_attributes.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'select_info.g.dart';

abstract class SelectInfo implements Built<SelectInfo, SelectInfoBuilder> {
  static Serializer<SelectInfo> get serializer => _$selectInfoSerializer;

  /// Text search string.
  /// Everything that matches the text is selected.
  /// This parameter is optional.
  /// Original name: qTextSearch
  @nullable
  @BuiltValueField(wireName: 'qTextSearch')
  String get textSearch;

  /// Lower value of the search range.
  /// This parameter is used when performing range selections or text searches in dimensions.
  /// Default is Null.
  /// Original name: qRangeLo
  @nullable
  @BuiltValueField(wireName: 'qRangeLo')
  num get rangeLo;

  /// Highest value of the search range.
  /// This parameter is used when performing range selections or text searches in dimensions.
  /// Default is Null.
  /// Original name: qRangeHi
  @nullable
  @BuiltValueField(wireName: 'qRangeHi')
  num get rangeHi;

  /// Gives information about the formatting of the range.
  /// This parameter is used when performing range selections or text searches in dimensions.
  /// Original name: qNumberFormat
  @nullable
  @BuiltValueField(wireName: 'qNumberFormat')
  FieldAttributes get numberFormat;

  /// This parameter is used when performing range selections or text searches in measures.
  /// Gives information about the range of selections.
  /// bool SoftLock = false;
  /// Original name: qRangeInfo
  @nullable
  @BuiltValueField(wireName: 'qRangeInfo')
  BuiltList<NxCell> get rangeInfo;

  /// Original name: qSoftLock
  @nullable
  @BuiltValueField(wireName: 'qSoftLock')
  bool get softLock;

  /// List of information about ranges for selections.
  /// Original name: qContinuousRangeInfo
  @nullable
  @BuiltValueField(wireName: 'qContinuousRangeInfo')
  BuiltList<NxCell> get continuousRangeInfo;

  factory SelectInfo([updates(SelectInfoBuilder b)]) = _$SelectInfo;

  factory SelectInfo.init(
      {String textSearch,
      num rangeLo,
      num rangeHi,
      FieldAttributes numberFormat,
      BuiltList<NxCell> rangeInfo,
      bool softLock,
      BuiltList<NxCell> continuousRangeInfo}) = _$SelectInfo._;

  SelectInfo._();
}