library currency_converter_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fluttercurrencyconverter/model/serializer/serializers.dart';

part 'currency_converter_model.g.dart';
abstract class CurrencyConverterModel  implements Built<CurrencyConverterModel,CurrencyConverterModelBuilder>{
    //Fields
  String get date;
  double get result;

     CurrencyConverterModel._();
  factory CurrencyConverterModel([updates(CurrencyConverterModelBuilder b)]) = _$CurrencyConverterModel;

  static Serializer<CurrencyConverterModel> get serializer => _$currencyConverterModelSerializer;
   String toJson(){
    return json.encode(serializers.serializeWith(CurrencyConverterModel.serializer,this));
  }
  static CurrencyConverterModel fromJson(String jsonString){
    return serializers.deserializeWith(CurrencyConverterModel.serializer,json.decode(jsonString));
  }

}