/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'nx_meta.dart';
import 'nx_layout_errors.dart';
import 'nx_selection_info.dart';

/// Is the layout for _GenericObjectProperties_.
class GenericObjectLayout {
  /// Identifier and type of the generic object.
  /// Original name: qInfo
  NxInfo info;
  /// Information about publishing and permissions.
  /// This parameter is optional.
  /// Original name: qMeta
  NxMeta meta;
  /// Should be set to create an object that is linked to another object. Enter the identifier of the object you want to link to.
  /// If you do not want to link your object, set this parameter to an empty string.
  /// Original name: qExtendsId
  String extendsId;
  /// Is set to true if the generic object contains some properties that are not persistent (a soft patch was applied).
  /// Original name: qHasSoftPatches
  bool hasSoftPatches;
  /// Gives information on the error.
  /// This parameter is optional.
  /// Original name: qError
  NxLayoutErrors error;
  /// Information about the selections.
  /// Original name: qSelectionInfo
  NxSelectionInfo selectionInfo;
}

