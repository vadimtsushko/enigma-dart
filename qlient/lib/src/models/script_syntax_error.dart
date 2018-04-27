/// This file was autogenerated

library script_syntax_error;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'script_syntax_error.g.dart';

abstract class ScriptSyntaxError implements Built<ScriptSyntaxError, ScriptSyntaxErrorBuilder> {

 static Serializer<ScriptSyntaxError> get serializer => _$scriptSyntaxErrorSerializer;

  /// Length of the word where the error is located.
  /// Original name: qErrLen
  @nullable
  int get errLen;

  /// Number of the faulty section.
  /// Original name: qTabIx
  @nullable
  int get tabIx;

  /// Line number in the section where the error is located.
  /// Original name: qLineInTab
  @nullable
  int get lineInTab;

  /// Position of the erroneous text from the beginning of the line.
  /// Original name: qColInLine
  @nullable
  int get colInLine;

  /// Position of the erroneous text from the beginning of the script.
  /// Original name: qTextPos
  @nullable
  int get textPos;

  /// The default value is false.
  /// Original name: qSecondaryFailure
  @nullable
  bool get secondaryFailure;

  factory ScriptSyntaxError([updates(ScriptSyntaxErrorBuilder b)]) = _$ScriptSyntaxError;

  factory ScriptSyntaxError.init({int errLen, int tabIx, int lineInTab, int colInLine, int textPos, bool secondaryFailure}) = _$ScriptSyntaxError._;

  ScriptSyntaxError._();
}
