/// This file was autogenerated

library generic_bookmark_entry;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'generic_bookmark_properties.dart';
import 'nx_bookmark.dart';
part 'generic_bookmark_entry.g.dart';

abstract class GenericBookmarkEntry implements Built<GenericBookmarkEntry, GenericBookmarkEntryBuilder> {

 static Serializer<GenericBookmarkEntry> get serializer => _$genericBookmarkEntrySerializer;

  /// Information about the properties of the bookmark.
  /// Original name: qProperties
  @nullable
  GenericBookmarkProperties get properties;

  /// Information about the bookmark.
  /// Original name: qBookmark
  @nullable
  NxBookmark get bookmark;

  factory GenericBookmarkEntry([updates(GenericBookmarkEntryBuilder b)]) = _$GenericBookmarkEntry;

  GenericBookmarkEntry._();
}
