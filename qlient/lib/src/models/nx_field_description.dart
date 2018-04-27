/// This file was autogenerated

library nx_field_description;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'nx_derived_field_description_list.dart';
part 'nx_field_description.g.dart';

/// ### NxDerivedFieldsdata
/// <table>
/// <tr>
/// <th>Name</th>
/// <th>Description</th>
/// <th>Type</th>
/// </tr>
/// <tr>
/// <td>qDerivedDefinitionName</td>
/// <td>Name of the derived definition.</td>
/// <td>String</td>
/// </tr>
/// <tr>
/// <td>qFieldDefs</td>
/// <td>List of the derived fields.</td>
/// <td>Array of <i>NxDerivedField</i></td>
/// </tr>
/// <tr>
/// <td>qGroupDefs</td>
/// <td>List of the derived groups.</td>
/// <td>Array of <i>NxDerivedGroup</i></td>
/// </tr>
/// <tr>
/// <td>qTags</td>
/// <td>List of tags on the derived fields.</td>
/// <td>Array of <i>String</i> </td>
/// </tr>
/// </table>
abstract class NxFieldDescription
    implements Built<NxFieldDescription, NxFieldDescriptionBuilder> {
  static Serializer<NxFieldDescription> get serializer =>
      _$nxFieldDescriptionSerializer;

  /// If set to true, it means that the field is a semantic.
  /// Original name: qIsSemantic
  @nullable
  bool get isSemantic;

  /// If set to true, it means that the field is hidden.
  /// Original name: qIsHidden
  @nullable
  bool get isHidden;

  /// If set to true, it means that the field is a system field.
  /// Original name: qIsSystem
  @nullable
  bool get isSystem;

  /// If set to true a logical AND (instead of a logical OR) is used when making selections in a field.
  /// The default value is false.
  /// Original name: qAndMode
  @nullable
  bool get andMode;

  /// Name of the field
  /// Original name: qName
  @nullable
  String get name;

  /// Number of distinct field values
  /// Original name: qCardinal
  @nullable
  int get cardinal;

  /// Gives information on a field. For example, it can return the type of the field.
  /// Examples: key, text, ASCII
  /// Original name: qTags
  @nullable
  BuiltList<NxCell> get tags;

  /// If set to true, it means that the field is a field on the fly.
  /// Original name: qIsDefinitionOnly
  @nullable
  bool get isDefinitionOnly;

  /// Lists the derived fields if any.
  /// Original name: qDerivedFieldData
  @nullable
  NxDerivedFieldDescriptionList get derivedFieldData;

  /// Is used for Direct Discovery.
  /// If set to true, it means that the type of the field is detail.
  /// Original name: qIsDetail
  @nullable
  bool get isDetail;

  /// Is used for Direct Discovery.
  /// If set to true, it means that the type of the field is measure.
  /// Original name: qIsImplicit
  @nullable
  bool get isImplicit;

  /// Original name: qReadableName
  @nullable
  String get readableName;

  factory NxFieldDescription([updates(NxFieldDescriptionBuilder b)]) =
      _$NxFieldDescription;

  factory NxFieldDescription.init(
      {bool isSemantic,
      bool isHidden,
      bool isSystem,
      bool andMode,
      String name,
      int cardinal,
      BuiltList<NxCell> tags,
      bool isDefinitionOnly,
      NxDerivedFieldDescriptionList derivedFieldData,
      bool isDetail,
      bool isImplicit,
      String readableName}) = _$NxFieldDescription._;

  NxFieldDescription._();
}
