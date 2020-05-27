// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_base_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyBaseModel> _$currencyBaseModelSerializer =
    new _$CurrencyBaseModelSerializer();

class _$CurrencyBaseModelSerializer
    implements StructuredSerializer<CurrencyBaseModel> {
  @override
  final Iterable<Type> types = const [CurrencyBaseModel, _$CurrencyBaseModel];
  @override
  final String wireName = 'CurrencyBaseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CurrencyBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'rates',
      serializers.serialize(object.rates,
          specifiedType: const FullType(CurrencyBaseData)),
    ];

    return result;
  }

  @override
  CurrencyBaseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyBaseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rates':
          result.rates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CurrencyBaseData))
              as CurrencyBaseData);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyBaseModel extends CurrencyBaseModel {
  @override
  final String base;
  @override
  final String date;
  @override
  final CurrencyBaseData rates;

  factory _$CurrencyBaseModel(
          [void Function(CurrencyBaseModelBuilder) updates]) =>
      (new CurrencyBaseModelBuilder()..update(updates)).build();

  _$CurrencyBaseModel._({this.base, this.date, this.rates}) : super._() {
    if (base == null) {
      throw new BuiltValueNullFieldError('CurrencyBaseModel', 'base');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('CurrencyBaseModel', 'date');
    }
    if (rates == null) {
      throw new BuiltValueNullFieldError('CurrencyBaseModel', 'rates');
    }
  }

  @override
  CurrencyBaseModel rebuild(void Function(CurrencyBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBaseModelBuilder toBuilder() =>
      new CurrencyBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyBaseModel &&
        base == other.base &&
        date == other.date &&
        rates == other.rates;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, base.hashCode), date.hashCode), rates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrencyBaseModel')
          ..add('base', base)
          ..add('date', date)
          ..add('rates', rates))
        .toString();
  }
}

class CurrencyBaseModelBuilder
    implements Builder<CurrencyBaseModel, CurrencyBaseModelBuilder> {
  _$CurrencyBaseModel _$v;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  CurrencyBaseDataBuilder _rates;
  CurrencyBaseDataBuilder get rates =>
      _$this._rates ??= new CurrencyBaseDataBuilder();
  set rates(CurrencyBaseDataBuilder rates) => _$this._rates = rates;

  CurrencyBaseModelBuilder();

  CurrencyBaseModelBuilder get _$this {
    if (_$v != null) {
      _base = _$v.base;
      _date = _$v.date;
      _rates = _$v.rates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyBaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CurrencyBaseModel;
  }

  @override
  void update(void Function(CurrencyBaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrencyBaseModel build() {
    _$CurrencyBaseModel _$result;
    try {
      _$result = _$v ??
          new _$CurrencyBaseModel._(
              base: base, date: date, rates: rates.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'rates';
        rates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CurrencyBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
