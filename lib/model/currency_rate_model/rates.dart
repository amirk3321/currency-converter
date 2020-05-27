library rates;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fluttercurrencyconverter/model/serializer/serializers.dart';

part 'rates.g.dart';
abstract class Rates  implements Built<Rates,RatesBuilder>{
    //Fields
  double get AED;
  double get AFN;
  double get ALL;
  double get AMD;
  double get ANG;
  double get AOA;
  double get ARS;
  double get AUD;
  double get AWG;
  double get AZN;
  double get BAM;
  double get BBD;
  double get BDT;
  double get BGN;
  double get BHD;
  double get BIF;
  double get BMD;
  double get BND;
  double get BOB;
  double get BRL;
  double get BSD;
  double get BTC;
  double get BTN;
  double get BWP;
  double get BYN;
  double get BZD;
  double get CAD;
  double get CDF;
  double get CHF;
  double get CLF;
  double get CLP;
  double get CNH;
  double get CNY;
  double get COP;
  double get CRC;
  double get CUC;
  double get CUP;
  double get CVE;
  double get CZK;
  double get DJF;
  double get DKK;
  double get DOP;
  double get DZD;
  double get EGP;
  double get ERN;
  double get ETB;
  double get EUR;
  double get FJD;
  double get FKP;
  double get GBP;
  double get GEL;
  double get GGP;
  double get GHS;
  double get GIP;
  double get GMD;
  double get GNF;
  double get GTQ;
  double get GYD;
  double get HKD;
  double get HNL;
  double get HRK;
  double get HTG;
  double get HUF;
  double get IDR;
  double get ILS;
  double get IMP;
  double get INR;
  double get IQD;
  double get IRR;
  double get ISK;
  double get JEP;
  double get JMD;
  double get JOD;
  double get JPY;
  double get KES;
  double get KGS;
  double get KHR;
  double get KMF;
  double get KPW;
  double get KRW;
  double get KWD;
  double get KYD;
  double get KZT;
  double get LAK;
  double get LBP;
  double get LKR;
  double get LRD;
  double get LSL;
  double get LYD;
  double get MAD;
  double get MDL;
  double get MGA;
  double get MKD;
  double get MMK;
  double get MNT;
  double get MOP;
  double get MRO;
  double get MRU;
  double get MUR;
  double get MVR;
  double get MWK;
  double get MXN;
  double get MYR;
  double get MZN;
  double get NAD;
  double get NGN;
  double get NIO;
  double get NOK;
  double get NPR;
  double get NZD;
  double get OMR;
  double get PAB;
  double get PEN;
  double get PGK;
  double get PHP;
  double get PKR;
  double get PLN;
  double get PYG;
  double get QAR;
  double get RON;
  double get RSD;
  double get RUB;
  double get RWF;
  double get SAR;
  double get SBD;
  double get SCR;
  double get SDG;
  double get SEK;
  double get SGD;
  double get SHP;
  double get SLL;
  double get SOS;
  double get SRD;
  double get SSP;
  double get STD;
  double get STN;
  double get SVC;
  double get SYP;
  double get SZL;
  double get THB;
  double get TJS;
  double get TMT;
  double get TND;
  double get TOP;
  double get TRY;
  double get TTD;
  double get TWD;
  double get TZS;
  double get UAH;
  double get UGX;
  double get USD;
  double get UYU;
  double get UZS;
  double get VEF;
  double get VES;
  double get VND;
  double get VUV;
  double get WST;
  double get XAF;
  double get XAG;
  double get XAU;
  double get XCD;
  double get XDR;
  double get XOF;
  double get XPD;
  double get XPF;
  double get XPT;
  double get YER;
  double get ZAR;
  double get ZMW;
  double get ZWL;
     Rates._();
  factory Rates([updates(RatesBuilder b)]) = _$Rates;

  static Serializer<Rates> get serializer => _$ratesSerializer;
   String toJson(){
    return json.encode(serializers.serializeWith(Rates.serializer,this));
  }
  static Rates fromJson(String jsonString){
    return serializers.deserializeWith(Rates.serializer,json.decode(jsonString));
  }

}