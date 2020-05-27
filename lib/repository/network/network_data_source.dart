
import 'dart:convert';

import 'package:fluttercurrencyconverter/model/currency_base/currency_base_model.dart';
import 'package:fluttercurrencyconverter/model/currency_converter_model/currency_converter_model.dart';
import 'package:fluttercurrencyconverter/model/currency_rate_model/currency_rete_model_result.dart';
import 'package:fluttercurrencyconverter/repository/exception/exceptions.dart';
import 'package:http/http.dart' as http;

class NetworkDataSource {
  http.Client client = http.Client();


  //Get the latest foreign exchange rates
  Future<CurrencyRateModelResult> getCurrencyRate()async{
    final rowUrl=_baseUrl(endPoint: "latest");
    final encodedUrl=Uri.encodeFull(rowUrl);

    final response=await client.get(encodedUrl);
    if (response.statusCode==200){
      final data=json.decode(response.body)['rates'];
      print(data);
      print(data[0]);
      return CurrencyRateModelResult.fromJson(response.body);
    }else{
      throw ServerException(json.decode(response.body)['error']['message']);
    }
  }

  //Get convert currency from [xyz param] to [xyz param]
  Future<CurrencyConverterModel> getConvertCurrency({String from,String to})async{
    final rowUrl=_baseUrl(endPoint: "convert?from=$from&to=$to");
    final encodedUrl=Uri.encodeFull(rowUrl);

    final response=await client.get(encodedUrl);
    if (response.statusCode==200){
      return CurrencyConverterModel.fromJson(response.body);
    }else{
      throw ServerException(json.decode(response.body)['error']['message']);
    }
  }

  //Quote against a different currency by setting the base parameter
  Future<CurrencyBaseModel> getQuoteCurrencyBase({String base})async{
    final rowUrl=_baseUrl(endPoint:"latest?base=$base");
    final encodedFullUrl=Uri.encodeFull(rowUrl);
    final response=await client.get(encodedFullUrl);

    if (response.statusCode==200){
      return CurrencyBaseModel.fromJson(response.body);
    }else {
      throw ServerException(json.decode(response.body)['error']['message']);
    }
  }

  //BaseURL
  String _baseUrl({String endPoint}) => "https://api.exchangerate.host/$endPoint";
}