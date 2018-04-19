/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'nx_meta_def.dart';
import 'field_attributes.dart';

class GenericVariableProperties {
  /// Identifier and type of the object.
  /// This parameter is mandatory.
  NxInfo info;
  /// Meta data.
  NxMetaDef metaDef;
  /// Name of the variable.
  /// The name must be unique.
  /// This parameter is mandatory.
  String name;
  /// Comment related to the variable.
  /// This parameter is optional.
  String comment;
  /// Defines the format of the value.
  /// This parameter is optional.
  FieldAttributes numberPresentation;
  /// Set this property to true to update the variable when applying a bookmark. The variable value will be persisted in the bookmark.
  /// The value of a variable can affect the state of the selections.
  /// Script variables cannot be persisted in the bookmark.
  /// The default value is false.
  bool includeInBookmark;
  /// Definition of the variable.
  String definition;
}

