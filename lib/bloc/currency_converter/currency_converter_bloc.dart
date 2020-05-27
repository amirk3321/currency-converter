import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:fluttercurrencyconverter/repository/exception/exceptions.dart';
import 'package:fluttercurrencyconverter/repository/repository.dart';
import './bloc.dart';

class CurrencyConverterBloc extends Bloc<CurrencyConverterEvent, CurrencyConverterState> {
  final Repository _repository;
  CurrencyConverterBloc(Repository repository) : assert(repository!=null), _repository=repository;

  @override
  CurrencyConverterState get initialState => CurrencyConverterLoading();

  @override
  Stream<CurrencyConverterState> mapEventToState(
    CurrencyConverterEvent event,
  ) async* {
    if (event is GetConvertCurrency){
      yield* _mapOfGetConvertCurrency(event);
    }
  }

  Stream<CurrencyConverterState> _mapOfGetConvertCurrency(GetConvertCurrency event) async*{
    yield CurrencyConverterLoading();
    try{
      final response=await _repository.getConvertCurrency(from: event.from,to: event.to);
      yield CurrencyConverterLoaded(response);
    }on ServerException catch(e){
      yield CurrencyConverterFailure(e.message);
    }on SocketException catch(e){
      print("${e.message},${e.address},${e.port}");
    }
  }
}
