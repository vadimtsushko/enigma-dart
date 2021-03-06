/// This file was autogenerated

library bookmark_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_container_entry.dart';
import 'package:built_collection/built_collection.dart';
part 'bookmark_list.g.dart';

/// Lists the bookmarks. Is the layout for _BookmarkListDef_.
abstract class BookmarkList
    implements Built<BookmarkList, BookmarkListBuilder> {
  static Serializer<BookmarkList> get serializer => _$bookmarkListSerializer;

  /// Information about the list of bookmarks.
  /// Original name: qItems
  @nullable
  @BuiltValueField(wireName: 'qItems')
  BuiltList<NxContainerEntry> get items;

  factory BookmarkList([updates(BookmarkListBuilder b)]) = _$BookmarkList;

  factory BookmarkList.init({BuiltList<NxContainerEntry> items}) =
      _$BookmarkList._;

  BookmarkList._();
}
