// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_converter_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyConverterModel> _$currencyConverterModelSerializer =
    new _$CurrencyConverterModelSerializer();

class _$CurrencyConverterModelSerializer
    implements StructuredSerializer<CurrencyConverterModel> {
  @override
  final Iterable<Type> types = const [
    CurrencyConverterModel,
    _$CurrencyConverterModel
  ];
  @override
  final String wireName = 'CurrencyConverterModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CurrencyConverterModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'result',
      serializers.serialize(object.result,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CurrencyConverterModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyConverterModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyConverterModel extends CurrencyConverterModel {
  @override
  final String date;
  @override
  final double result;

  factory _$CurrencyConverterModel(
          [void Function(CurrencyConverterModelBuilder) updates]) =>
      (new CurrencyConverterModelBuilder()..update(updates)).build();

  _$CurrencyConverterModel._({this.date, this.result}) : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('CurrencyConverterModel', 'date');
    }
    if (result == null) {
      throw new BuiltValueNullFieldError('CurrencyConverterModel', 'result');
    }
  }

  @override
  CurrencyConverterModel rebuild(
          void Function(CurrencyConverterModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyConverterModelBuilder toBuilder() =>
      new CurrencyConverterModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyConverterModel &&
        date == other.date &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrencyConverterModel')
          ..add('date', date)
          ..add('result', result))
        .toString();
  }
}

class CurrencyConverterModelBuilder
    implements Builder<CurrencyConverterModel, CurrencyConverterModelBuilder> {
  _$CurrencyConverterModel _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  double _result;
  double get result => _$this._result;
  set result(double result) => _$this._result = result;

  CurrencyConverterModelBuilder();

  CurrencyConverterModelBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyConverterModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CurrencyConverterModel;
  }

  @override
  void update(void Function(CurrencyConverterModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrencyConverterModel build() {
    final _$result =
        _$v ?? new _$CurrencyConverterModel._(date: date, result: result);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
