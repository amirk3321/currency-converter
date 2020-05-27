
import 'package:built_collection/built_collection.dart';
import 'package:fluttercurrencyconverter/model/currency_base/currency_base_model.dart';
import 'package:fluttercurrencyconverter/model/currency_converter_model/currency_converter_model.dart';
import 'package:fluttercurrencyconverter/model/currency_rate_model/rates.dart';
import 'package:fluttercurrencyconverter/repository/network/network_data_source.dart';

class Repository{
  NetworkDataSource _networkDataSource=NetworkDataSource();


  Future<Rates> getCurrencyRate()async {
    final response =await _networkDataSource.getCurrencyRate();
    return response.rates;
  }

  Future<CurrencyConverterModel> getConvertCurrency({String from,String to})async {
    final response =await _networkDataSource.getConvertCurrency(from: from,to: to);
    return response;
  }
  Future<CurrencyBaseModel> getQuoteCurrencyBase({String base})async{
    final response =await _networkDataSource.getQuoteCurrencyBase(base: base);
    return response;
  }

}