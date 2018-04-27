/// This file was autogenerated

library search_object_options;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'search_object_options.g.dart';

abstract class SearchObjectOptions
    implements Built<SearchObjectOptions, SearchObjectOptionsBuilder> {
  static Serializer<SearchObjectOptions> get serializer =>
      _$searchObjectOptionsSerializer;

  /// This array is either empty or contains _qProperty_ .
  /// Original name: qAttributes
  @nullable
  BuiltList<NxCell> get attributes;

  /// Encoding used to compute qRanges of type SearchCharRange.
  /// <div class=note>Only affects the computation of the ranges. It does not impact the encoding of the text.</div>
  ///
  /// One of:
  /// * Utf8 or CHAR_ENCODING_UTF8
  /// * Utf16 or CHAR_ENCODING_UTF16
  /// Original name: qCharEncoding
  @nullable
  String get charEncoding;

  factory SearchObjectOptions([updates(SearchObjectOptionsBuilder b)]) =
      _$SearchObjectOptions;

  factory SearchObjectOptions.init(
      {BuiltList<NxCell> attributes,
      String charEncoding}) = _$SearchObjectOptions._;

  SearchObjectOptions._();
}
