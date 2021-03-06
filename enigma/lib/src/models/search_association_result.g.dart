// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_association_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<SearchAssociationResult> _$searchAssociationResultSerializer =
    new _$SearchAssociationResultSerializer();

class _$SearchAssociationResultSerializer
    implements StructuredSerializer<SearchAssociationResult> {
  @override
  final Iterable<Type> types = const [
    SearchAssociationResult,
    _$SearchAssociationResult
  ];
  @override
  final String wireName = 'SearchAssociationResult';

  @override
  Iterable serialize(Serializers serializers, SearchAssociationResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.fieldNames != null) {
      result
        ..add('qFieldNames')
        ..add(serializers.serialize(object.fieldNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.searchTerms != null) {
      result
        ..add('qSearchTerms')
        ..add(serializers.serialize(object.searchTerms,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.fieldDictionaries != null) {
      result
        ..add('qFieldDictionaries')
        ..add(serializers.serialize(object.fieldDictionaries,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchFieldDictionary)])));
    }
    if (object.searchTermsMatched != null) {
      result
        ..add('qSearchTermsMatched')
        ..add(serializers.serialize(object.searchTermsMatched,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  BuiltList, const [const FullType(SearchMatchCombination)])
            ])));
    }
    if (object.totalSearchResults != null) {
      result
        ..add('qTotalSearchResults')
        ..add(serializers.serialize(object.totalSearchResults,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SearchAssociationResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchAssociationResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qFieldNames':
          result.fieldNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qSearchTerms':
          result.searchTerms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qFieldDictionaries':
          result.fieldDictionaries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchFieldDictionary)]))
              as BuiltList);
          break;
        case 'qSearchTermsMatched':
          result.searchTermsMatched.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    BuiltList, const [const FullType(SearchMatchCombination)])
              ])) as BuiltList);
          break;
        case 'qTotalSearchResults':
          result.totalSearchResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchAssociationResult extends SearchAssociationResult {
  @override
  final BuiltList<String> fieldNames;
  @override
  final BuiltList<String> searchTerms;
  @override
  final BuiltList<SearchFieldDictionary> fieldDictionaries;
  @override
  final BuiltList<BuiltList<SearchMatchCombination>> searchTermsMatched;
  @override
  final int totalSearchResults;

  factory _$SearchAssociationResult(
          [void updates(SearchAssociationResultBuilder b)]) =>
      (new SearchAssociationResultBuilder()..update(updates)).build();

  _$SearchAssociationResult._(
      {this.fieldNames,
      this.searchTerms,
      this.fieldDictionaries,
      this.searchTermsMatched,
      this.totalSearchResults})
      : super._();

  @override
  SearchAssociationResult rebuild(
          void updates(SearchAssociationResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchAssociationResultBuilder toBuilder() =>
      new SearchAssociationResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchAssociationResult) return false;
    return fieldNames == other.fieldNames &&
        searchTerms == other.searchTerms &&
        fieldDictionaries == other.fieldDictionaries &&
        searchTermsMatched == other.searchTermsMatched &&
        totalSearchResults == other.totalSearchResults;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, fieldNames.hashCode), searchTerms.hashCode),
                fieldDictionaries.hashCode),
            searchTermsMatched.hashCode),
        totalSearchResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchAssociationResult')
          ..add('fieldNames', fieldNames)
          ..add('searchTerms', searchTerms)
          ..add('fieldDictionaries', fieldDictionaries)
          ..add('searchTermsMatched', searchTermsMatched)
          ..add('totalSearchResults', totalSearchResults))
        .toString();
  }
}

class SearchAssociationResultBuilder
    implements
        Builder<SearchAssociationResult, SearchAssociationResultBuilder> {
  _$SearchAssociationResult _$v;

  ListBuilder<String> _fieldNames;
  ListBuilder<String> get fieldNames =>
      _$this._fieldNames ??= new ListBuilder<String>();
  set fieldNames(ListBuilder<String> fieldNames) =>
      _$this._fieldNames = fieldNames;

  ListBuilder<String> _searchTerms;
  ListBuilder<String> get searchTerms =>
      _$this._searchTerms ??= new ListBuilder<String>();
  set searchTerms(ListBuilder<String> searchTerms) =>
      _$this._searchTerms = searchTerms;

  ListBuilder<SearchFieldDictionary> _fieldDictionaries;
  ListBuilder<SearchFieldDictionary> get fieldDictionaries =>
      _$this._fieldDictionaries ??= new ListBuilder<SearchFieldDictionary>();
  set fieldDictionaries(ListBuilder<SearchFieldDictionary> fieldDictionaries) =>
      _$this._fieldDictionaries = fieldDictionaries;

  ListBuilder<BuiltList<SearchMatchCombination>> _searchTermsMatched;
  ListBuilder<BuiltList<SearchMatchCombination>> get searchTermsMatched =>
      _$this._searchTermsMatched ??=
          new ListBuilder<BuiltList<SearchMatchCombination>>();
  set searchTermsMatched(
          ListBuilder<BuiltList<SearchMatchCombination>> searchTermsMatched) =>
      _$this._searchTermsMatched = searchTermsMatched;

  int _totalSearchResults;
  int get totalSearchResults => _$this._totalSearchResults;
  set totalSearchResults(int totalSearchResults) =>
      _$this._totalSearchResults = totalSearchResults;

  SearchAssociationResultBuilder();

  SearchAssociationResultBuilder get _$this {
    if (_$v != null) {
      _fieldNames = _$v.fieldNames?.toBuilder();
      _searchTerms = _$v.searchTerms?.toBuilder();
      _fieldDictionaries = _$v.fieldDictionaries?.toBuilder();
      _searchTermsMatched = _$v.searchTermsMatched?.toBuilder();
      _totalSearchResults = _$v.totalSearchResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchAssociationResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchAssociationResult;
  }

  @override
  void update(void updates(SearchAssociationResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchAssociationResult build() {
    _$SearchAssociationResult _$result;
    try {
      _$result = _$v ??
          new _$SearchAssociationResult._(
              fieldNames: _fieldNames?.build(),
              searchTerms: _searchTerms?.build(),
              fieldDictionaries: _fieldDictionaries?.build(),
              searchTermsMatched: _searchTermsMatched?.build(),
              totalSearchResults: totalSearchResults);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fieldNames';
        _fieldNames?.build();
        _$failedField = 'searchTerms';
        _searchTerms?.build();
        _$failedField = 'fieldDictionaries';
        _fieldDictionaries?.build();
        _$failedField = 'searchTermsMatched';
        _searchTermsMatched?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchAssociationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
