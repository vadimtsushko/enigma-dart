/// This file was autogenerated

library nx_app_layout;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_meta.dart';
import 'locale_info.dart';
import 'static_content_url.dart';
part 'nx_app_layout.g.dart';

/// ### Qlik Sense Desktop
/// In Qlik Sense Desktop, this structure can contain dynamic properties.
///
/// ### Qlik Sense Enterprise
/// In Qlik Sense Enterprise, only a few dynamic properties at the app level are persisted.
/// The persisted dynamic properties are the following:
/// * modifiedDate
/// * published
/// * publishTime
/// * privileges
/// * description
/// * dynamicColor
abstract class NxAppLayout implements Built<NxAppLayout, NxAppLayoutBuilder> {
  static Serializer<NxAppLayout> get serializer => _$nxAppLayoutSerializer;

  /// Title of the app.
  /// Original name: qTitle
  @nullable
  @BuiltValueField(wireName: 'qTitle')
  String get title;

  /// In Qlik Sense Enterprise, this property corresponds to the app identifier (GUID).
  /// In Qlik Sense Desktop, this property corresponds to the full path of the app.
  /// Original name: qFileName
  @nullable
  @BuiltValueField(wireName: 'qFileName')
  String get fileName;

  /// Date and time of the last reload of the app in ISO format.
  /// Original name: qLastReloadTime
  @nullable
  @BuiltValueField(wireName: 'qLastReloadTime')
  String get lastReloadTime;

  /// Is set to true if the app has been updated since the last save.
  /// Original name: qModified
  @nullable
  @BuiltValueField(wireName: 'qModified')
  bool get modified;

  /// Is set to true if a script is defined in the app.
  /// Original name: qHasScript
  @nullable
  @BuiltValueField(wireName: 'qHasScript')
  bool get hasScript;

  /// Array of alternate states.
  /// Original name: qStateNames
  @nullable
  @BuiltValueField(wireName: 'qStateNames')
  BuiltList<String> get stateNames;

  /// Information on publishing and permissions.
  /// Original name: qMeta
  @nullable
  @BuiltValueField(wireName: 'qMeta')
  NxMeta get meta;

  /// Information about the locale.
  /// Original name: qLocaleInfo
  @nullable
  @BuiltValueField(wireName: 'qLocaleInfo')
  LocaleInfo get localeInfo;

  /// Is set to true if the app contains data following a script reload.
  /// Original name: qHasData
  @nullable
  @BuiltValueField(wireName: 'qHasData')
  bool get hasData;

  /// If set to true, it means that the app is read-only.
  /// Original name: qReadOnly
  @nullable
  @BuiltValueField(wireName: 'qReadOnly')
  bool get readOnly;

  /// If set to true, it means that the app was opened without loading its data.
  /// Original name: qIsOpenedWithoutData
  @nullable
  @BuiltValueField(wireName: 'qIsOpenedWithoutData')
  bool get isOpenedWithoutData;

  /// App thumbnail.
  /// Original name: qThumbnail
  @nullable
  @BuiltValueField(wireName: 'qThumbnail')
  StaticContentUrl get thumbnail;

  factory NxAppLayout([updates(NxAppLayoutBuilder b)]) = _$NxAppLayout;

  factory NxAppLayout.init(
      {String title,
      String fileName,
      String lastReloadTime,
      bool modified,
      bool hasScript,
      BuiltList<String> stateNames,
      NxMeta meta,
      LocaleInfo localeInfo,
      bool hasData,
      bool readOnly,
      bool isOpenedWithoutData,
      StaticContentUrl thumbnail}) = _$NxAppLayout._;

  NxAppLayout._();
}
