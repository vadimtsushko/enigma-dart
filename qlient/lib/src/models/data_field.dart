/// This file was autogenerated

library data_field;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'data_field.g.dart';

abstract class DataField implements Built<DataField, DataFieldBuilder> {

 static Serializer<DataField> get serializer => _$dataFieldSerializer;

  /// Name of the field.
  /// Original name: qName
  @nullable
  String get name;

  /// Is set to true if the field is a primary key.
  /// Original name: qIsKey
  @nullable
  bool get isKey;

  /// Is shown for fixed records.
  /// _qOriginalFieldName_ and _qName_ are identical if no field names are used in the file.
  /// _qOriginalFieldName_ differs from _qName_ if embedded file names are used in the file.
  /// Original name: qOriginalFieldName
  @nullable
  String get originalFieldName;

  factory DataField([updates(DataFieldBuilder b)]) = _$DataField;

  DataField._();
}
