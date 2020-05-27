library currency_base_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fluttercurrencyconverter/model/currency_base/currency_base_data.dart';
import 'package:fluttercurrencyconverter/model/serializer/serializers.dart';

part 'currency_base_model.g.dart';
abstract class CurrencyBaseModel  implements Built<CurrencyBaseModel,CurrencyBaseModelBuilder>{
    //Fields
  String get base;
    String get date;
    CurrencyBaseData get rates;
     CurrencyBaseModel._();
  factory CurrencyBaseModel([updates(CurrencyBaseModelBuilder b)]) = _$CurrencyBaseModel;

  static Serializer<CurrencyBaseModel> get serializer => _$currencyBaseModelSerializer;
   String toJson(){
    return json.encode(serializers.serializeWith(CurrencyBaseModel.serializer,this));
  }
  static CurrencyBaseModel fromJson(String jsonString){
    return serializers.deserializeWith(CurrencyBaseModel.serializer,json.decode(jsonString));
  }

}