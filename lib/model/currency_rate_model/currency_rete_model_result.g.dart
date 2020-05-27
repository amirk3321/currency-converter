// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_rete_model_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyRateModelResult> _$currencyRateModelResultSerializer =
    new _$CurrencyRateModelResultSerializer();

class _$CurrencyRateModelResultSerializer
    implements StructuredSerializer<CurrencyRateModelResult> {
  @override
  final Iterable<Type> types = const [
    CurrencyRateModelResult,
    _$CurrencyRateModelResult
  ];
  @override
  final String wireName = 'CurrencyRateModelResult';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CurrencyRateModelResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'rates',
      serializers.serialize(object.rates, specifiedType: const FullType(Rates)),
    ];

    return result;
  }

  @override
  CurrencyRateModelResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyRateModelResultBuilder();

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
              specifiedType: const FullType(Rates)) as Rates);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyRateModelResult extends CurrencyRateModelResult {
  @override
  final String base;
  @override
  final String date;
  @override
  final Rates rates;

  factory _$CurrencyRateModelResult(
          [void Function(CurrencyRateModelResultBuilder) updates]) =>
      (new CurrencyRateModelResultBuilder()..update(updates)).build();

  _$CurrencyRateModelResult._({this.base, this.date, this.rates}) : super._() {
    if (base == null) {
      throw new BuiltValueNullFieldError('CurrencyRateModelResult', 'base');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('CurrencyRateModelResult', 'date');
    }
    if (rates == null) {
      throw new BuiltValueNullFieldError('CurrencyRateModelResult', 'rates');
    }
  }

  @override
  CurrencyRateModelResult rebuild(
          void Function(CurrencyRateModelResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyRateModelResultBuilder toBuilder() =>
      new CurrencyRateModelResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyRateModelResult &&
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
    return (newBuiltValueToStringHelper('CurrencyRateModelResult')
          ..add('base', base)
          ..add('date', date)
          ..add('rates', rates))
        .toString();
  }
}

class CurrencyRateModelResultBuilder
    implements
        Builder<CurrencyRateModelResult, CurrencyRateModelResultBuilder> {
  _$CurrencyRateModelResult _$v;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  RatesBuilder _rates;
  RatesBuilder get rates => _$this._rates ??= new RatesBuilder();
  set rates(RatesBuilder rates) => _$this._rates = rates;

  CurrencyRateModelResultBuilder();

  CurrencyRateModelResultBuilder get _$this {
    if (_$v != null) {
      _base = _$v.base;
      _date = _$v.date;
      _rates = _$v.rates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyRateModelResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CurrencyRateModelResult;
  }

  @override
  void update(void Function(CurrencyRateModelResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrencyRateModelResult build() {
    _$CurrencyRateModelResult _$result;
    try {
      _$result = _$v ??
          new _$CurrencyRateModelResult._(
              base: base, date: date, rates: rates.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'rates';
        rates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CurrencyRateModelResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
