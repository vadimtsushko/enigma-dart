/// This file was autogenerated

library nx_page;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_page.g.dart';

abstract class NxPage implements Built<NxPage, NxPageBuilder> {
  static Serializer<NxPage> get serializer => _$nxPageSerializer;

  /// Position from the left.
  /// Corresponds to the first column.
  /// Original name: qLeft
  @nullable
  @BuiltValueField(wireName: 'qLeft')
  int get left;

  /// Position from the top.
  /// Corresponds to the first row.
  /// Original name: qTop
  @nullable
  @BuiltValueField(wireName: 'qTop')
  int get top;

  /// Number of columns in the page. The indexing of the columns may vary depending on whether the cells are expanded or not (parameter _qAlwaysFullyExpanded_ in _HyperCubeDef_ ).
  /// Original name: qWidth
  @nullable
  @BuiltValueField(wireName: 'qWidth')
  int get width;

  /// Number of rows or elements in the page. The indexing of the rows may vary depending on whether the cells are expanded or not (parameter _qAlwaysFullyExpanded_ in _HyperCubeDef_ ).
  /// Original name: qHeight
  @nullable
  @BuiltValueField(wireName: 'qHeight')
  int get height;

  factory NxPage([updates(NxPageBuilder b)]) = _$NxPage;

  factory NxPage.init({int left, int top, int width, int height}) = _$NxPage._;

  NxPage._();
}
