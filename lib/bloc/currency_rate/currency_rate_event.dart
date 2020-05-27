import 'package:equatable/equatable.dart';

abstract class CurrencyRateEvent extends Equatable {
  const CurrencyRateEvent();
}

class GetCurrencyRate extends CurrencyRateEvent{
  @override
  List<Object> get props => [];
}
