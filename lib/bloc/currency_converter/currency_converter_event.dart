import 'package:equatable/equatable.dart';

abstract class CurrencyConverterEvent extends Equatable {
  const CurrencyConverterEvent();
}

class GetConvertCurrency extends CurrencyConverterEvent{
  final String from;
  final String to;


  GetConvertCurrency({this.from, this.to});


  @override
  // TODO: implement props
  List<Object> get props => [from,to];

}