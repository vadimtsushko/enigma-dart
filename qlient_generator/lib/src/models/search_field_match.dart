/// This code was autogenerated
import 'package:built_value/built_value.dart';


class SearchFieldMatch {
  /// Position of the field in the list of fields, starting from 0.
  /// The list of fields is defined in _qResults/qFieldNames_ and contains the search associations.
  int field;
  /// Positions of the matching values in the search results.
  /// The maximum number of values in this list is defined by _qMaxNbrFieldMatches_ .
  List<int> values;
  /// Positions of the search terms, starting from 0.
  List<int> terms;
  /// Number of search hits in the field.
  /// The number of values in _qValues_ and the value of _qNoOfMatches_ are equal if _qMaxNbrFieldMatches_ is -1.
  int noOfMatches;
}

