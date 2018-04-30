/// This file was autogenerated

library media_list_item;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'media_list_item.g.dart';

/// <div class=note>In addition, this structure can return dynamic properties.</div>
abstract class MediaListItem
    implements Built<MediaListItem, MediaListItemBuilder> {
  static Serializer<MediaListItem> get serializer => _$mediaListItemSerializer;

  /// Relative path to the media file. The URL is static.
  /// Media files located:
  /// * in the _/content/default/_ folder are outside the qvf file.
  /// * in the _/media/ folder_ are embedded in the qvf file.
  /// Original name: qUrlDef
  @nullable
  @BuiltValueField(wireName: 'qUrlDef')
  String get urlDef;

  /// Relative path to the media file.
  /// Media files located:
  /// * in the _/content/default/_ folder are outside the qvf file.
  /// * in the _/media/ folder_ are embedded in the qvf file.
  /// Original name: qUrl
  @nullable
  @BuiltValueField(wireName: 'qUrl')
  String get url;

  factory MediaListItem([updates(MediaListItemBuilder b)]) = _$MediaListItem;

  factory MediaListItem.init({String urlDef, String url}) = _$MediaListItem._;

  MediaListItem._();
}