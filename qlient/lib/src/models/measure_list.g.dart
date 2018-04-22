// GENERATED CODE - DO NOT MODIFY BY HAND

part of measure_list;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<MeasureList> _$measureListSerializer = new _$MeasureListSerializer();

class _$MeasureListSerializer implements StructuredSerializer<MeasureList> {
  @override
  final Iterable<Type> types = const [MeasureList, _$MeasureList];
  @override
  final String wireName = 'MeasureList';

  @override
  Iterable serialize(Serializers serializers, MeasureList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  MeasureList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MeasureListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$MeasureList extends MeasureList {
  @override
  final List<NxCell> items;

  factory _$MeasureList([void updates(MeasureListBuilder b)]) =>
      (new MeasureListBuilder()..update(updates)).build();

  _$MeasureList._({this.items}) : super._();

  @override
  MeasureList rebuild(void updates(MeasureListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MeasureListBuilder toBuilder() => new MeasureListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MeasureList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MeasureList')..add('items', items))
        .toString();
  }
}

class MeasureListBuilder implements Builder<MeasureList, MeasureListBuilder> {
  _$MeasureList _$v;

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  MeasureListBuilder();

  MeasureListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeasureList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MeasureList;
  }

  @override
  void update(void updates(MeasureListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MeasureList build() {
    final _$result = _$v ?? new _$MeasureList._(items: items);
    replace(_$result);
    return _$result;
  }
}
