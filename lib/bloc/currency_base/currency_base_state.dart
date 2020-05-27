import 'package:equatable/equatable.dart';
import 'package:fluttercurrencyconverter/model/currency_base/currency_base_data.dart';

abstract class CurrencyBaseState extends Equatable {
  const CurrencyBaseState();
}


class CurrencyBaseLoading extends CurrencyBaseState{
  @override
  List<Object> get props => [];
}

class CurrencyBaseLoaded extends CurrencyBaseState{
  final CurrencyBaseData currencyConverterData;

  CurrencyBaseLoaded(this.currencyConverterData);

  @override
  List<Object> get props => [currencyConverterData];
}
class CurrencyBaseFailure extends CurrencyBaseState {
  final String errorMessage;

  CurrencyBaseFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}