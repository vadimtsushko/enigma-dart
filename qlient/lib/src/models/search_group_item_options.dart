/// This file was autogenerated

library search_group_item_options;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'search_group_item_options.g.dart';

abstract class SearchGroupItemOptions implements Built<SearchGroupItemOptions, SearchGroupItemOptionsBuilder> {

 static Serializer<SearchGroupItemOptions> get serializer => _$searchGroupItemOptionsSerializer;

  /// Type of the group item. Can be:
  /// * GenericObject: the type of the search group item is a generic object. Group items have this type when you are calling _SearchObjects_ .
  /// * Field: the type of the search group item is a field. Group items have this type when you are calling _SearchResults_ .
  /// 
  /// One of:
  /// * Field or FIELD
  /// * GenericObject or GENERIC_OBJECT
  /// Original name: qGroupItemType
  @nullable
  String get groupItemType;

  /// Position starting from 0.
  /// The default value is 0.
  /// Original name: qOffset
  @nullable
  int get offset;

  /// Maximum number of matches per item (in _qItemMatches[ ]_ ).
  /// The default value is -1: all values are returned.
  /// Original name: qCount
  @nullable
  int get count;

  factory SearchGroupItemOptions([updates(SearchGroupItemOptionsBuilder b)]) = _$SearchGroupItemOptions;

  SearchGroupItemOptions._();
}
