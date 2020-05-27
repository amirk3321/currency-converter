import 'package:equatable/equatable.dart';

abstract class CurrencyBaseEvent extends Equatable {
  const CurrencyBaseEvent();
}

class CurrencyBaseQuote extends CurrencyBaseEvent{
  final String base;

  CurrencyBaseQuote({this.base});

  @override
  // TODO: implement props
  List<Object> get props => [base];

}
