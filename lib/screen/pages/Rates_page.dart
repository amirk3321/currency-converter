import 'package:currency_pickers/country.dart';
import 'package:currency_pickers/currency_pickers.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercurrencyconverter/bloc/currency_rate/bloc.dart';
import 'package:fluttercurrencyconverter/screen/common/common.dart';

class RatesPage extends StatefulWidget {
  @override
  _RatesPageState createState() => _RatesPageState();
}

class _RatesPageState extends State<RatesPage> {
  List _list =[];
  @override
  void initState() {
    BlocProvider.of<CurrencyRateBloc>(context).add(GetCurrencyRate());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<CurrencyRateBloc, CurrencyRateState>(
          builder: (BuildContext context, CurrencyRateState state) {
            if (state is CurrencyRateLoaded) {
              return SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Latest foreign exchange rates.",style: TextStyle(color: Colors.black,fontSize: 18),textAlign: TextAlign.start,),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Table(
                          border: TableBorder.all(
                              color: Colors.black26,
                              width: 1,
                              style: BorderStyle.solid),
                          children: [
                            TableRow(children: [
                              TableCell(child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Currency',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              ))),
                              TableCell(child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Rate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              ))),
                            ]),
                            _tableCell(currencyCode: "${countryNameList[0]} (${currencyCodeList[0]})",currencyRate: state.rates.AED),
                            _tableCell(currencyCode: "${countryNameList[1]} (${currencyCodeList[1]})",currencyRate: state.rates.AFN),
                            _tableCell(currencyCode: "${countryNameList[2]} (${currencyCodeList[2]})",currencyRate: state.rates.ALL),
                            _tableCell(currencyCode: "${countryNameList[3]} (${currencyCodeList[3]})",currencyRate: state.rates.AMD),
                            _tableCell(currencyCode: "${countryNameList[4]} (${currencyCodeList[4]})",currencyRate: state.rates.ANG),
                            _tableCell(currencyCode: "${countryNameList[5]} (${currencyCodeList[5]})",currencyRate: state.rates.AOA),
                            _tableCell(currencyCode: "${countryNameList[6]} (${currencyCodeList[6]})",currencyRate: state.rates.ARS),
                            _tableCell(currencyCode: "${countryNameList[7]} (${currencyCodeList[7]})",currencyRate: state.rates.AUD),
                            _tableCell(currencyCode: "${countryNameList[8]} (${currencyCodeList[8]})",currencyRate: state.rates.AWG),
                            _tableCell(currencyCode: "${countryNameList[9]} (${currencyCodeList[9]})",currencyRate: state.rates.AZN),
                            _tableCell(currencyCode: "${countryNameList[10]} (${currencyCodeList[10]})",currencyRate: state.rates.BAM),
                            _tableCell(currencyCode: "${countryNameList[11]} (${currencyCodeList[11]})",currencyRate: state.rates.BBD),
                            _tableCell(currencyCode: "${countryNameList[12]} (${currencyCodeList[12]})",currencyRate: state.rates.BDT),
                            _tableCell(currencyCode: "${countryNameList[13]} (${currencyCodeList[13]})",currencyRate: state.rates.BGN),
                            _tableCell(currencyCode: "${countryNameList[14]} (${currencyCodeList[14]})",currencyRate: state.rates.BHD),
                            _tableCell(currencyCode: "${countryNameList[15]} (${currencyCodeList[15]})",currencyRate: state.rates.BIF),
                            _tableCell(currencyCode: "${countryNameList[16]} (${currencyCodeList[16]})",currencyRate: state.rates.BMD),
                            _tableCell(currencyCode: "${countryNameList[17]} (${currencyCodeList[17]})",currencyRate: state.rates.BND),
                            _tableCell(currencyCode: "${countryNameList[18]} (${currencyCodeList[18]})",currencyRate: state.rates.BOB),
                            _tableCell(currencyCode: "${countryNameList[19]} (${currencyCodeList[19]})",currencyRate: state.rates.BRL),
                            _tableCell(currencyCode: "${countryNameList[20]} (${currencyCodeList[20]})",currencyRate: state.rates.BSD),
                            _tableCell(currencyCode: "${countryNameList[21]} (${currencyCodeList[21]})",currencyRate: state.rates.BTC),
                            _tableCell(currencyCode: "${countryNameList[22]} (${currencyCodeList[22]})",currencyRate: state.rates.BTN),
                            _tableCell(currencyCode: "${countryNameList[23]} (${currencyCodeList[23]})",currencyRate: state.rates.BWP),

                            _tableCell(currencyCode: "${countryNameList[24]} (${currencyCodeList[24]})",currencyRate: state.rates.BYN),
                            _tableCell(currencyCode: "${countryNameList[25]} (${currencyCodeList[25]})",currencyRate: state.rates.BZD),
                            _tableCell(currencyCode: "${countryNameList[26]} (${currencyCodeList[26]})",currencyRate: state.rates.CAD),
                            _tableCell(currencyCode: "${countryNameList[27]} (${currencyCodeList[27]})",currencyRate: state.rates.CDF),
                            _tableCell(currencyCode: "${countryNameList[28]} (${currencyCodeList[28]})",currencyRate: state.rates.CHF),
                            _tableCell(currencyCode: "${countryNameList[29]} (${currencyCodeList[29]})",currencyRate: state.rates.CLF),
                            _tableCell(currencyCode: "${countryNameList[30]} (${currencyCodeList[30]})",currencyRate: state.rates.CLP),
                            _tableCell(currencyCode: "${countryNameList[31]} (${currencyCodeList[31]})",currencyRate: state.rates.CNH),

                            _tableCell(currencyCode: "${countryNameList[32]} (${currencyCodeList[32]})",currencyRate: state.rates.CNY),
                            _tableCell(currencyCode: "${countryNameList[33]} (${currencyCodeList[33]})",currencyRate: state.rates.COP),
                            _tableCell(currencyCode: "${countryNameList[34]} (${currencyCodeList[34]})",currencyRate: state.rates.CRC),
                            _tableCell(currencyCode: "${countryNameList[35]} (${currencyCodeList[35]})",currencyRate: state.rates.CUC),
                            _tableCell(currencyCode: "${countryNameList[36]} (${currencyCodeList[36]})",currencyRate: state.rates.CUP),
                            _tableCell(currencyCode: "${countryNameList[37]} (${currencyCodeList[37]})",currencyRate: state.rates.CVE),
                            _tableCell(currencyCode: "${countryNameList[38]} (${currencyCodeList[38]})",currencyRate: state.rates.CZK),
                            _tableCell(currencyCode: "${countryNameList[39]} (${currencyCodeList[39]})",currencyRate: state.rates.DJF),

                            _tableCell(currencyCode: "${countryNameList[40]} (${currencyCodeList[40]})",currencyRate: state.rates.DKK),
                            _tableCell(currencyCode: "${countryNameList[41]} (${currencyCodeList[41]})",currencyRate: state.rates.DOP),
                            _tableCell(currencyCode: "${countryNameList[42]} (${currencyCodeList[42]})",currencyRate: state.rates.DZD),
                            _tableCell(currencyCode: "${countryNameList[43]} (${currencyCodeList[43]})",currencyRate: state.rates.EGP),
                            _tableCell(currencyCode: "${countryNameList[44]} (${currencyCodeList[44]})",currencyRate: state.rates.ERN),
                            _tableCell(currencyCode: "${countryNameList[45]} (${currencyCodeList[45]})",currencyRate: state.rates.ETB),
                            _tableCell(currencyCode: "${countryNameList[46]} (${currencyCodeList[46]})",currencyRate: state.rates.EUR),
                            _tableCell(currencyCode: "${countryNameList[47]} (${currencyCodeList[47]})",currencyRate: state.rates.FJD),

                            _tableCell(currencyCode: "${countryNameList[48]} (${currencyCodeList[48]})",currencyRate: state.rates.FKP),
                            _tableCell(currencyCode: "${countryNameList[49]} (${currencyCodeList[49]})",currencyRate: state.rates.GBP),
                            _tableCell(currencyCode: "${countryNameList[50]} (${currencyCodeList[50]})",currencyRate: state.rates.GEL),
                            _tableCell(currencyCode: "${countryNameList[51]} (${currencyCodeList[51]})",currencyRate: state.rates.GGP),
                            _tableCell(currencyCode: "${countryNameList[52]} (${currencyCodeList[52]})",currencyRate: state.rates.GHS),
                            _tableCell(currencyCode: "${countryNameList[53]} (${currencyCodeList[53]})",currencyRate: state.rates.GIP),
                            _tableCell(currencyCode: "${countryNameList[54]} (${currencyCodeList[54]})",currencyRate: state.rates.GMD),
                            _tableCell(currencyCode: "${countryNameList[55]} (${currencyCodeList[55]})",currencyRate: state.rates.GNF),

                            _tableCell(currencyCode: "${countryNameList[56]} (${currencyCodeList[56]})",currencyRate: state.rates.GTQ),
                            _tableCell(currencyCode: "${countryNameList[57]} (${currencyCodeList[57]})",currencyRate: state.rates.GYD),
                            _tableCell(currencyCode: "${countryNameList[58]} (${currencyCodeList[58]})",currencyRate: state.rates.HKD),
                            _tableCell(currencyCode: "${countryNameList[59]} (${currencyCodeList[59]})",currencyRate: state.rates.HNL),
                            _tableCell(currencyCode: "${countryNameList[60]} (${currencyCodeList[60]})",currencyRate: state.rates.HRK),
                            _tableCell(currencyCode: "${countryNameList[61]} (${currencyCodeList[61]})",currencyRate: state.rates.HTG),
                            _tableCell(currencyCode: "${countryNameList[62]} (${currencyCodeList[62]})",currencyRate: state.rates.HUF),
                            _tableCell(currencyCode: "${countryNameList[63]} (${currencyCodeList[63]})",currencyRate: state.rates.IDR),

                            _tableCell(currencyCode: "${countryNameList[64]} (${currencyCodeList[64]})",currencyRate: state.rates.ILS),
                            _tableCell(currencyCode: "${countryNameList[65]} (${currencyCodeList[65]})",currencyRate: state.rates.IMP),
                            _tableCell(currencyCode: "${countryNameList[66]} (${currencyCodeList[66]})",currencyRate: state.rates.INR),
                            _tableCell(currencyCode: "${countryNameList[67]} (${currencyCodeList[67]})",currencyRate: state.rates.IQD),
                            _tableCell(currencyCode: "${countryNameList[68]} (${currencyCodeList[68]})",currencyRate: state.rates.IRR),
                            _tableCell(currencyCode: "${countryNameList[69]} (${currencyCodeList[69]})",currencyRate: state.rates.ISK),
                            _tableCell(currencyCode: "${countryNameList[70]} (${currencyCodeList[70]})",currencyRate: state.rates.JEP),
                            _tableCell(currencyCode: "${countryNameList[71]} (${currencyCodeList[71]})",currencyRate: state.rates.JMD),

                            _tableCell(currencyCode: "${countryNameList[72]} (${currencyCodeList[72]})",currencyRate: state.rates.JOD),
                            _tableCell(currencyCode: "${countryNameList[73]} (${currencyCodeList[73]})",currencyRate: state.rates.JPY),
                            _tableCell(currencyCode: "${countryNameList[74]} (${currencyCodeList[74]})",currencyRate: state.rates.KES),
                            _tableCell(currencyCode: "${countryNameList[75]} (${currencyCodeList[75]})",currencyRate: state.rates.KGS),
                            _tableCell(currencyCode: "${countryNameList[76]} (${currencyCodeList[76]})",currencyRate: state.rates.KHR),
                            _tableCell(currencyCode: "${countryNameList[77]} (${currencyCodeList[77]})",currencyRate: state.rates.KMF),
                            _tableCell(currencyCode: "${countryNameList[78]} (${currencyCodeList[78]})",currencyRate: state.rates.KPW),
                            _tableCell(currencyCode: "${countryNameList[79]} (${currencyCodeList[79]})",currencyRate: state.rates.KRW),

                            _tableCell(currencyCode: "${countryNameList[80]} (${currencyCodeList[80]})",currencyRate: state.rates.KWD),
                            _tableCell(currencyCode: "${countryNameList[81]} (${currencyCodeList[81]})",currencyRate: state.rates.KYD),
                            _tableCell(currencyCode: "${countryNameList[82]} (${currencyCodeList[82]})",currencyRate: state.rates.KZT),
                            _tableCell(currencyCode: "${countryNameList[83]} (${currencyCodeList[83]})",currencyRate: state.rates.LAK),
                            _tableCell(currencyCode: "${countryNameList[84]} (${currencyCodeList[84]})",currencyRate: state.rates.LBP),
                            _tableCell(currencyCode: "${countryNameList[85]} (${currencyCodeList[85]})",currencyRate: state.rates.LKR),
                            _tableCell(currencyCode: "${countryNameList[86]} (${currencyCodeList[86]})",currencyRate: state.rates.LRD),
                            _tableCell(currencyCode: "${countryNameList[87]} (${currencyCodeList[87]})",currencyRate: state.rates.LSL),

                            _tableCell(currencyCode: "${countryNameList[88]} (${currencyCodeList[88]})",currencyRate: state.rates.LYD),
                            _tableCell(currencyCode: "${countryNameList[89]} (${currencyCodeList[89]})",currencyRate: state.rates.MAD),
                            _tableCell(currencyCode: "${countryNameList[90]} (${currencyCodeList[90]})",currencyRate: state.rates.MDL),
                            _tableCell(currencyCode: "${countryNameList[91]} (${currencyCodeList[91]})",currencyRate: state.rates.MGA),
                            _tableCell(currencyCode: "${countryNameList[92]} (${currencyCodeList[92]})",currencyRate: state.rates.MKD),
                            _tableCell(currencyCode: "${countryNameList[93]} (${currencyCodeList[93]})",currencyRate: state.rates.MMK),
                            _tableCell(currencyCode: "${countryNameList[94]} (${currencyCodeList[94]})",currencyRate: state.rates.MNT),
                            _tableCell(currencyCode: "${countryNameList[95]} (${currencyCodeList[95]})",currencyRate: state.rates.MOP),

                            _tableCell(currencyCode: "${countryNameList[96]} (${currencyCodeList[96]})",currencyRate: state.rates.MRO),
                            _tableCell(currencyCode: "${countryNameList[97]} (${currencyCodeList[97]})",currencyRate: state.rates.MRU),
                            _tableCell(currencyCode: "${countryNameList[98]} (${currencyCodeList[98]})",currencyRate: state.rates.MUR),
                            _tableCell(currencyCode: "${countryNameList[99]} (${currencyCodeList[99]})",currencyRate: state.rates.MVR),
                            _tableCell(currencyCode: "${countryNameList[100]} (${currencyCodeList[100]})",currencyRate: state.rates.MWK),
                            _tableCell(currencyCode: "${countryNameList[101]} (${currencyCodeList[101]})",currencyRate: state.rates.MXN),
                            _tableCell(currencyCode: "${countryNameList[102]} (${currencyCodeList[102]})",currencyRate: state.rates.MYR),
                            _tableCell(currencyCode: "${countryNameList[103]} (${currencyCodeList[103]})",currencyRate: state.rates.MZN),

                            _tableCell(currencyCode: "${countryNameList[104]} (${currencyCodeList[104]})",currencyRate: state.rates.NAD),
                            _tableCell(currencyCode: "${countryNameList[105]} (${currencyCodeList[105]})",currencyRate: state.rates.NGN),
                            _tableCell(currencyCode: "${countryNameList[106]} (${currencyCodeList[106]})",currencyRate: state.rates.NIO),
                            _tableCell(currencyCode: "${countryNameList[107]} (${currencyCodeList[107]})",currencyRate: state.rates.NOK),
                            _tableCell(currencyCode: "${countryNameList[108]} (${currencyCodeList[108]})",currencyRate: state.rates.NPR),
                            _tableCell(currencyCode: "${countryNameList[109]} (${currencyCodeList[109]})",currencyRate: state.rates.NZD),
                            _tableCell(currencyCode: "${countryNameList[110]} (${currencyCodeList[110]})",currencyRate: state.rates.OMR),
                            _tableCell(currencyCode: "${countryNameList[111]} (${currencyCodeList[111]})",currencyRate: state.rates.PAB),

                            _tableCell(currencyCode: "${countryNameList[112]} (${currencyCodeList[112]})",currencyRate: state.rates.PEN),
                            _tableCell(currencyCode: "${countryNameList[113]} (${currencyCodeList[113]})",currencyRate: state.rates.PGK),
                            _tableCell(currencyCode: "${countryNameList[114]} (${currencyCodeList[114]})",currencyRate: state.rates.PHP),
                            _tableCell(currencyCode: "${countryNameList[115]} (${currencyCodeList[115]})",currencyRate: state.rates.PKR),
                            _tableCell(currencyCode: "${countryNameList[116]} (${currencyCodeList[116]})",currencyRate: state.rates.PLN),
                            _tableCell(currencyCode: "${countryNameList[117]} (${currencyCodeList[117]})",currencyRate: state.rates.PYG),
                            _tableCell(currencyCode: "${countryNameList[118]} (${currencyCodeList[118]})",currencyRate: state.rates.QAR),
                            _tableCell(currencyCode: "${countryNameList[119]} (${currencyCodeList[119]})",currencyRate: state.rates.RON),

                            _tableCell(currencyCode: "${countryNameList[120]} (${currencyCodeList[120]})",currencyRate: state.rates.RSD),
                            _tableCell(currencyCode: "${countryNameList[121]} (${currencyCodeList[121]})",currencyRate: state.rates.RUB),
                            _tableCell(currencyCode: "${countryNameList[122]} (${currencyCodeList[122]})",currencyRate: state.rates.RWF),
                            _tableCell(currencyCode: "${countryNameList[123]} (${currencyCodeList[123]})",currencyRate: state.rates.SAR),
                            _tableCell(currencyCode: "${countryNameList[124]} (${currencyCodeList[124]})",currencyRate: state.rates.SBD),
                            _tableCell(currencyCode: "${countryNameList[125]} (${currencyCodeList[125]})",currencyRate: state.rates.SCR),
                            _tableCell(currencyCode: "${countryNameList[126]} (${currencyCodeList[126]})",currencyRate: state.rates.SDG),
                            _tableCell(currencyCode: "${countryNameList[127]} (${currencyCodeList[127]})",currencyRate: state.rates.SEK),

                            _tableCell(currencyCode: "${countryNameList[128]} (${currencyCodeList[128]})",currencyRate: state.rates.SGD),
                            _tableCell(currencyCode: "${countryNameList[129]} (${currencyCodeList[129]})",currencyRate: state.rates.SHP),
                            _tableCell(currencyCode: "${countryNameList[130]} (${currencyCodeList[130]})",currencyRate: state.rates.SLL),
                            _tableCell(currencyCode: "${countryNameList[131]} (${currencyCodeList[131]})",currencyRate: state.rates.SOS),
                            _tableCell(currencyCode: "${countryNameList[132]} (${currencyCodeList[132]})",currencyRate: state.rates.SRD),
                            _tableCell(currencyCode: "${countryNameList[133]} (${currencyCodeList[133]})",currencyRate: state.rates.SSP),
                            _tableCell(currencyCode: "${countryNameList[134]} (${currencyCodeList[134]})",currencyRate: state.rates.STD),
                            _tableCell(currencyCode: "${countryNameList[135]} (${currencyCodeList[135]})",currencyRate: state.rates.STN),

                            _tableCell(currencyCode: "${countryNameList[136]} (${currencyCodeList[136]})",currencyRate: state.rates.SVC),
                            _tableCell(currencyCode: "${countryNameList[137]} (${currencyCodeList[137]})",currencyRate: state.rates.SYP),
                            _tableCell(currencyCode: "${countryNameList[138]} (${currencyCodeList[138]})",currencyRate: state.rates.SZL),
                            _tableCell(currencyCode: "${countryNameList[139]} (${currencyCodeList[139]})",currencyRate: state.rates.THB),
                            _tableCell(currencyCode: "${countryNameList[140]} (${currencyCodeList[140]})",currencyRate: state.rates.TJS),
                            _tableCell(currencyCode: "${countryNameList[141]} (${currencyCodeList[141]})",currencyRate: state.rates.TMT),
                            _tableCell(currencyCode: "${countryNameList[142]} (${currencyCodeList[142]})",currencyRate: state.rates.TND),
                            _tableCell(currencyCode: "${countryNameList[143]} (${currencyCodeList[143]})",currencyRate: state.rates.TOP),

                            _tableCell(currencyCode: "${countryNameList[144]} (${currencyCodeList[144]})",currencyRate: state.rates.TRY),
                            _tableCell(currencyCode: "${countryNameList[145]} (${currencyCodeList[145]})",currencyRate: state.rates.TTD),
                            _tableCell(currencyCode: "${countryNameList[146]} (${currencyCodeList[146]})",currencyRate: state.rates.TWD),
                            _tableCell(currencyCode: "${countryNameList[147]} (${currencyCodeList[147]})",currencyRate: state.rates.TZS),
                            _tableCell(currencyCode: "${countryNameList[148]} (${currencyCodeList[148]})",currencyRate: state.rates.UAH),
                            _tableCell(currencyCode: "${countryNameList[149]} (${currencyCodeList[149]})",currencyRate: state.rates.UGX),
                            _tableCell(currencyCode: "${countryNameList[150]} (${currencyCodeList[150]})",currencyRate: state.rates.USD),
                            _tableCell(currencyCode: "${countryNameList[151]} (${currencyCodeList[151]})",currencyRate: state.rates.UYU),

                            _tableCell(currencyCode: "${countryNameList[152]} (${currencyCodeList[152]})",currencyRate: state.rates.UZS),
                            _tableCell(currencyCode: "${countryNameList[153]} (${currencyCodeList[153]})",currencyRate: state.rates.VEF),
                            _tableCell(currencyCode: "${countryNameList[154]} (${currencyCodeList[154]})",currencyRate: state.rates.VES),
                            _tableCell(currencyCode: "${countryNameList[155]} (${currencyCodeList[155]})",currencyRate: state.rates.VND),
                            _tableCell(currencyCode: "${countryNameList[156]} (${currencyCodeList[156]})",currencyRate: state.rates.VUV),
                            _tableCell(currencyCode: "${countryNameList[157]} (${currencyCodeList[157]})",currencyRate: state.rates.WST),
                            _tableCell(currencyCode: "${countryNameList[158]} (${currencyCodeList[158]})",currencyRate: state.rates.XAF),
                            _tableCell(currencyCode: "${countryNameList[159]} (${currencyCodeList[159]})",currencyRate: state.rates.XAG),

                            _tableCell(currencyCode: "${countryNameList[160]} (${currencyCodeList[160]})",currencyRate: state.rates.XAU),
                            _tableCell(currencyCode: "${countryNameList[161]} (${currencyCodeList[161]})",currencyRate: state.rates.XCD),
                            _tableCell(currencyCode: "${countryNameList[162]} (${currencyCodeList[162]})",currencyRate: state.rates.XDR),
                            _tableCell(currencyCode: "${countryNameList[163]} (${currencyCodeList[163]})",currencyRate: state.rates.XOF),
                            _tableCell(currencyCode: "${countryNameList[164]} (${currencyCodeList[164]})",currencyRate: state.rates.XPD),
                            _tableCell(currencyCode: "${countryNameList[165]} (${currencyCodeList[165]})",currencyRate: state.rates.XPF),
                            _tableCell(currencyCode: "${countryNameList[166]} (${currencyCodeList[166]})",currencyRate: state.rates.XPT),
                            _tableCell(currencyCode: "${countryNameList[167]} (${currencyCodeList[167]})",currencyRate: state.rates.YER),

                            _tableCell(currencyCode: "${countryNameList[168]} (${currencyCodeList[168]})",currencyRate: state.rates.ZAR),
                            _tableCell(currencyCode: "${countryNameList[169]} (${currencyCodeList[169]})",currencyRate: state.rates.ZMW),
                            _tableCell(currencyCode: "${countryNameList[170]} (${currencyCodeList[170]})",currencyRate: state.rates.ZWL),


                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Center(
              child: Image.asset("assets/currency_loading.gif"),
            );
          },
        ),
      ),
    );
  }

  TableRow _tableCell({String currencyCode,double currencyRate}) {
    return TableRow(children: [
      TableCell(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child:  Text(currencyCode,textAlign: TextAlign.center,),),
      )),
      TableCell(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(currencyRate.toStringAsFixed(2))),
      )),
    ]);
  }
}
