import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fluttercurrencyconverter/model/currency_rate_model/rates.dart';

abstract class CurrencyRateState extends Equatable {
  const CurrencyRateState();
}

class CurrencyRateLoading extends CurrencyRateState{
  @override
  List<Object> get props => [];
}

class CurrencyRateLoaded extends CurrencyRateState{
  final Rates rates;

  CurrencyRateLoaded(this.rates);

  @override
  List<Object> get props => [rates];
}
class CurrencyRateFailure extends CurrencyRateState{
  final String errorMessage;

  CurrencyRateFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}