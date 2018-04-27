/// This file was autogenerated

library code_page;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'code_page.g.dart';

abstract class CodePage implements Built<CodePage, CodePageBuilder> {
  static Serializer<CodePage> get serializer => _$codePageSerializer;

  /// Number of the code page.
  /// Original name: qNumber
  @nullable
  int get number;

  /// Name of the code page.
  /// Original name: qName
  @nullable
  String get name;

  /// Description of the code page.
  /// Original name: qDescription
  @nullable
  String get description;

  factory CodePage([updates(CodePageBuilder b)]) = _$CodePage;

  factory CodePage.init({int number, String name, String description}) =
      _$CodePage._;

  CodePage._();
}
