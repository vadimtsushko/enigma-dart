import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at variable level.
/// <div class=note>Methods in this class are deprecated. Use methods in the _GenericVariableClass_ instead. </div>
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the variable.
class Variable extends BaseService {
  Variable(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Variable';

  /// Returns the calculated value of a variable.
  Future<AlfaNumString> getContent() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetContent', params);
  }

  /// Returns the raw value of a variable.
  Future<String> getRawContent() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetRawContent', params);
    return rawResult['qReturn'];
  }

  /// Sets a value to a variable.
  Future<bool> setContent(String content, bool updateMRU) async {
    var params = <String, dynamic>{};
    params['qContent'] = content;
    params['qUpdateMRU'] = updateMRU;
    var rawResult = await query('SetContent', params);
    return rawResult['qReturn'];
  }

  /// Sets the value of a dual variable overriding any input constraints.
  Future<void> forceContent(String s, num d) async {
    var params = <String, dynamic>{};
    params['qs'] = s;
    params['qd'] = d;
    var rawResult = await query('ForceContent', params);
  }

  /// Gets the properties of a variable.
  Future<NxVariableProperties> getNxProperties() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetNxProperties', params);
  }

  /// Sets some properties to a variable.
  Future<void> setNxProperties(NxVariableProperties properties) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetNxProperties', params);
  }
}
