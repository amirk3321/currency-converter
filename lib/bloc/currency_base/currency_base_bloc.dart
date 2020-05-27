import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:fluttercurrencyconverter/repository/repository.dart';
import './bloc.dart';
import 'package:fluttercurrencyconverter/repository/exception/exceptions.dart';

class CurrencyBaseBloc extends Bloc<CurrencyBaseEvent, CurrencyBaseState> {
  final Repository _repository;
  CurrencyBaseBloc(Repository repository) : assert(repository!=null), _repository=repository;

  @override
  CurrencyBaseState get initialState => CurrencyBaseLoading();

  @override
  Stream<CurrencyBaseState> mapEventToState(
    CurrencyBaseEvent event,
  ) async* {
    if (event is CurrencyBaseQuote){
      yield* _mapOfCurrencyBaseQuote(event);
    }
  }

  Stream<CurrencyBaseState> _mapOfCurrencyBaseQuote(CurrencyBaseQuote event) async*{
    yield CurrencyBaseLoading();
    try{
     final response= await _repository.getQuoteCurrencyBase(base: event.base);
      yield CurrencyBaseLoaded(response.rates);
    }on ServerException catch(e){
      yield CurrencyBaseFailure(e.message);
    }on SocketException catch(e){
      yield CurrencyBaseFailure(e.message);
    }
  }
}
