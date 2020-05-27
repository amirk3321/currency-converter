import 'package:currency_pickers/country.dart';
import 'package:currency_pickers/currency_picker_dialog.dart';
import 'package:currency_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttercurrencyconverter/bloc/currency_base/currency_base_event.dart';
import 'package:fluttercurrencyconverter/screen/common/common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercurrencyconverter/bloc/currency_base/currency_base_bloc.dart';
import 'package:fluttercurrencyconverter/bloc/currency_base/currency_base_state.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  String _baseValue ="USD";


  @override
  void initState() {
    BlocProvider.of<CurrencyBaseBloc>(context).add(CurrencyBaseQuote(
        base: _baseValue
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              rowWidget(),
              _bodyContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _baseWidgetButton(),
        _buttonWidget(),
      ],
    );
  }

  Widget _baseWidgetButton() {
    return InkWell(
      onTap: _openDialog,
      child: Row(
        children: <Widget>[
          Text("$_baseValue"),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }

  void _openDialog() {
    showDialog(context: context,builder:(_) => CurrencyPickerDialog(
      isSearchable: true,
      itemBuilder: _buildDropDownItem,
      title: Text("Select Currency"),
      onValuePicked: (Country country) {
        if (mounted)
          setState(() {
            _baseValue = country.currencyCode;
          });
      },
    ) );
  }

  Widget _buildDropDownItem(Country country) {
    return Container(
        child: Row(
          children: <Widget>[
            CurrencyPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 10.0,
            ),
            Text("${country.currencyCode} (${country.isoCode})"),
          ],
        ));
  }

  Widget _buttonWidget() {
    return InkWell(
      onTap: (){
        BlocProvider.of<CurrencyBaseBloc>(context).add(CurrencyBaseQuote(
          base: _baseValue
        ));
      },
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius:1,
              color: Colors.black.withOpacity(.6),
              offset: Offset(0.0,1.0),
            )
          ],
          color: Colors.purple,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Text("Go",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
      ),
    );
  }

 Widget _bodyContent() {
    return BlocBuilder<CurrencyBaseBloc,CurrencyBaseState>(builder: (BuildContext context, CurrencyBaseState state) {
      if (state is CurrencyBaseLoaded){
        return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                      _tableCell(currencyCode: "${countryNameList[0]} (${currencyCodeList[0]})",currencyRate: state.currencyConverterData.AED),
                      _tableCell(currencyCode: "${countryNameList[1]} (${currencyCodeList[1]})",currencyRate: state.currencyConverterData.AFN),
                      _tableCell(currencyCode: "${countryNameList[2]} (${currencyCodeList[2]})",currencyRate: state.currencyConverterData.ALL),
                      _tableCell(currencyCode: "${countryNameList[3]} (${currencyCodeList[3]})",currencyRate: state.currencyConverterData.AMD),
                      _tableCell(currencyCode: "${countryNameList[4]} (${currencyCodeList[4]})",currencyRate: state.currencyConverterData.ANG),
                      _tableCell(currencyCode: "${countryNameList[5]} (${currencyCodeList[5]})",currencyRate: state.currencyConverterData.AOA),
                      _tableCell(currencyCode: "${countryNameList[6]} (${currencyCodeList[6]})",currencyRate: state.currencyConverterData.ARS),
                      _tableCell(currencyCode: "${countryNameList[7]} (${currencyCodeList[7]})",currencyRate: state.currencyConverterData.AUD),
                      _tableCell(currencyCode: "${countryNameList[8]} (${currencyCodeList[8]})",currencyRate: state.currencyConverterData.AWG),
                      _tableCell(currencyCode: "${countryNameList[9]} (${currencyCodeList[9]})",currencyRate: state.currencyConverterData.AZN),
                      _tableCell(currencyCode: "${countryNameList[10]} (${currencyCodeList[10]})",currencyRate: state.currencyConverterData.BAM),
                      _tableCell(currencyCode: "${countryNameList[11]} (${currencyCodeList[11]})",currencyRate: state.currencyConverterData.BBD),
                      _tableCell(currencyCode: "${countryNameList[12]} (${currencyCodeList[12]})",currencyRate: state.currencyConverterData.BDT),
                      _tableCell(currencyCode: "${countryNameList[13]} (${currencyCodeList[13]})",currencyRate: state.currencyConverterData.BGN),
                      _tableCell(currencyCode: "${countryNameList[14]} (${currencyCodeList[14]})",currencyRate: state.currencyConverterData.BHD),
                      _tableCell(currencyCode: "${countryNameList[15]} (${currencyCodeList[15]})",currencyRate: state.currencyConverterData.BIF),
                      _tableCell(currencyCode: "${countryNameList[16]} (${currencyCodeList[16]})",currencyRate: state.currencyConverterData.BMD),
                      _tableCell(currencyCode: "${countryNameList[17]} (${currencyCodeList[17]})",currencyRate: state.currencyConverterData.BND),
                      _tableCell(currencyCode: "${countryNameList[18]} (${currencyCodeList[18]})",currencyRate: state.currencyConverterData.BOB),
                      _tableCell(currencyCode: "${countryNameList[19]} (${currencyCodeList[19]})",currencyRate: state.currencyConverterData.BRL),
                      _tableCell(currencyCode: "${countryNameList[20]} (${currencyCodeList[20]})",currencyRate: state.currencyConverterData.BSD),
                      _tableCell(currencyCode: "${countryNameList[21]} (${currencyCodeList[21]})",currencyRate: state.currencyConverterData.BTC),
                      _tableCell(currencyCode: "${countryNameList[22]} (${currencyCodeList[22]})",currencyRate: state.currencyConverterData.BTN),
                      _tableCell(currencyCode: "${countryNameList[23]} (${currencyCodeList[23]})",currencyRate: state.currencyConverterData.BWP),

                      _tableCell(currencyCode: "${countryNameList[24]} (${currencyCodeList[24]})",currencyRate: state.currencyConverterData.BYN),
                      _tableCell(currencyCode: "${countryNameList[25]} (${currencyCodeList[25]})",currencyRate: state.currencyConverterData.BZD),
                      _tableCell(currencyCode: "${countryNameList[26]} (${currencyCodeList[26]})",currencyRate: state.currencyConverterData.CAD),
                      _tableCell(currencyCode: "${countryNameList[27]} (${currencyCodeList[27]})",currencyRate: state.currencyConverterData.CDF),
                      _tableCell(currencyCode: "${countryNameList[28]} (${currencyCodeList[28]})",currencyRate: state.currencyConverterData.CHF),
                      _tableCell(currencyCode: "${countryNameList[29]} (${currencyCodeList[29]})",currencyRate: state.currencyConverterData.CLF),
                      _tableCell(currencyCode: "${countryNameList[30]} (${currencyCodeList[30]})",currencyRate: state.currencyConverterData.CLP),
                      _tableCell(currencyCode: "${countryNameList[31]} (${currencyCodeList[31]})",currencyRate: state.currencyConverterData.CNH),

                      _tableCell(currencyCode: "${countryNameList[32]} (${currencyCodeList[32]})",currencyRate: state.currencyConverterData.CNY),
                      _tableCell(currencyCode: "${countryNameList[33]} (${currencyCodeList[33]})",currencyRate: state.currencyConverterData.COP),
                      _tableCell(currencyCode: "${countryNameList[34]} (${currencyCodeList[34]})",currencyRate: state.currencyConverterData.CRC),
                      _tableCell(currencyCode: "${countryNameList[35]} (${currencyCodeList[35]})",currencyRate: state.currencyConverterData.CUC),
                      _tableCell(currencyCode: "${countryNameList[36]} (${currencyCodeList[36]})",currencyRate: state.currencyConverterData.CUP),
                      _tableCell(currencyCode: "${countryNameList[37]} (${currencyCodeList[37]})",currencyRate: state.currencyConverterData.CVE),
                      _tableCell(currencyCode: "${countryNameList[38]} (${currencyCodeList[38]})",currencyRate: state.currencyConverterData.CZK),
                      _tableCell(currencyCode: "${countryNameList[39]} (${currencyCodeList[39]})",currencyRate: state.currencyConverterData.DJF),

                      _tableCell(currencyCode: "${countryNameList[40]} (${currencyCodeList[40]})",currencyRate: state.currencyConverterData.DKK),
                      _tableCell(currencyCode: "${countryNameList[41]} (${currencyCodeList[41]})",currencyRate: state.currencyConverterData.DOP),
                      _tableCell(currencyCode: "${countryNameList[42]} (${currencyCodeList[42]})",currencyRate: state.currencyConverterData.DZD),
                      _tableCell(currencyCode: "${countryNameList[43]} (${currencyCodeList[43]})",currencyRate: state.currencyConverterData.EGP),
                      _tableCell(currencyCode: "${countryNameList[44]} (${currencyCodeList[44]})",currencyRate: state.currencyConverterData.ERN),
                      _tableCell(currencyCode: "${countryNameList[45]} (${currencyCodeList[45]})",currencyRate: state.currencyConverterData.ETB),
                      _tableCell(currencyCode: "${countryNameList[46]} (${currencyCodeList[46]})",currencyRate: state.currencyConverterData.EUR),
                      _tableCell(currencyCode: "${countryNameList[47]} (${currencyCodeList[47]})",currencyRate: state.currencyConverterData.FJD),

                      _tableCell(currencyCode: "${countryNameList[48]} (${currencyCodeList[48]})",currencyRate: state.currencyConverterData.FKP),
                      _tableCell(currencyCode: "${countryNameList[49]} (${currencyCodeList[49]})",currencyRate: state.currencyConverterData.GBP),
                      _tableCell(currencyCode: "${countryNameList[50]} (${currencyCodeList[50]})",currencyRate: state.currencyConverterData.GEL),
                      _tableCell(currencyCode: "${countryNameList[51]} (${currencyCodeList[51]})",currencyRate: state.currencyConverterData.GGP),
                      _tableCell(currencyCode: "${countryNameList[52]} (${currencyCodeList[52]})",currencyRate: state.currencyConverterData.GHS),
                      _tableCell(currencyCode: "${countryNameList[53]} (${currencyCodeList[53]})",currencyRate: state.currencyConverterData.GIP),
                      _tableCell(currencyCode: "${countryNameList[54]} (${currencyCodeList[54]})",currencyRate: state.currencyConverterData.GMD),
                      _tableCell(currencyCode: "${countryNameList[55]} (${currencyCodeList[55]})",currencyRate: state.currencyConverterData.GNF),

                      _tableCell(currencyCode: "${countryNameList[56]} (${currencyCodeList[56]})",currencyRate: state.currencyConverterData.GTQ),
                      _tableCell(currencyCode: "${countryNameList[57]} (${currencyCodeList[57]})",currencyRate: state.currencyConverterData.GYD),
                      _tableCell(currencyCode: "${countryNameList[58]} (${currencyCodeList[58]})",currencyRate: state.currencyConverterData.HKD),
                      _tableCell(currencyCode: "${countryNameList[59]} (${currencyCodeList[59]})",currencyRate: state.currencyConverterData.HNL),
                      _tableCell(currencyCode: "${countryNameList[60]} (${currencyCodeList[60]})",currencyRate: state.currencyConverterData.HRK),
                      _tableCell(currencyCode: "${countryNameList[61]} (${currencyCodeList[61]})",currencyRate: state.currencyConverterData.HTG),
                      _tableCell(currencyCode: "${countryNameList[62]} (${currencyCodeList[62]})",currencyRate: state.currencyConverterData.HUF),
                      _tableCell(currencyCode: "${countryNameList[63]} (${currencyCodeList[63]})",currencyRate: state.currencyConverterData.IDR),

                      _tableCell(currencyCode: "${countryNameList[64]} (${currencyCodeList[64]})",currencyRate: state.currencyConverterData.ILS),
                      _tableCell(currencyCode: "${countryNameList[65]} (${currencyCodeList[65]})",currencyRate: state.currencyConverterData.IMP),
                      _tableCell(currencyCode: "${countryNameList[66]} (${currencyCodeList[66]})",currencyRate: state.currencyConverterData.INR),
                      _tableCell(currencyCode: "${countryNameList[67]} (${currencyCodeList[67]})",currencyRate: state.currencyConverterData.IQD),
                      _tableCell(currencyCode: "${countryNameList[68]} (${currencyCodeList[68]})",currencyRate: state.currencyConverterData.IRR),
                      _tableCell(currencyCode: "${countryNameList[69]} (${currencyCodeList[69]})",currencyRate: state.currencyConverterData.ISK),
                      _tableCell(currencyCode: "${countryNameList[70]} (${currencyCodeList[70]})",currencyRate: state.currencyConverterData.JEP),
                      _tableCell(currencyCode: "${countryNameList[71]} (${currencyCodeList[71]})",currencyRate: state.currencyConverterData.JMD),

                      _tableCell(currencyCode: "${countryNameList[72]} (${currencyCodeList[72]})",currencyRate: state.currencyConverterData.JOD),
                      _tableCell(currencyCode: "${countryNameList[73]} (${currencyCodeList[73]})",currencyRate: state.currencyConverterData.JPY),
                      _tableCell(currencyCode: "${countryNameList[74]} (${currencyCodeList[74]})",currencyRate: state.currencyConverterData.KES),
                      _tableCell(currencyCode: "${countryNameList[75]} (${currencyCodeList[75]})",currencyRate: state.currencyConverterData.KGS),
                      _tableCell(currencyCode: "${countryNameList[76]} (${currencyCodeList[76]})",currencyRate: state.currencyConverterData.KHR),
                      _tableCell(currencyCode: "${countryNameList[77]} (${currencyCodeList[77]})",currencyRate: state.currencyConverterData.KMF),
                      _tableCell(currencyCode: "${countryNameList[78]} (${currencyCodeList[78]})",currencyRate: state.currencyConverterData.KPW),
                      _tableCell(currencyCode: "${countryNameList[79]} (${currencyCodeList[79]})",currencyRate: state.currencyConverterData.KRW),

                      _tableCell(currencyCode: "${countryNameList[80]} (${currencyCodeList[80]})",currencyRate: state.currencyConverterData.KWD),
                      _tableCell(currencyCode: "${countryNameList[81]} (${currencyCodeList[81]})",currencyRate: state.currencyConverterData.KYD),
                      _tableCell(currencyCode: "${countryNameList[82]} (${currencyCodeList[82]})",currencyRate: state.currencyConverterData.KZT),
                      _tableCell(currencyCode: "${countryNameList[83]} (${currencyCodeList[83]})",currencyRate: state.currencyConverterData.LAK),
                      _tableCell(currencyCode: "${countryNameList[84]} (${currencyCodeList[84]})",currencyRate: state.currencyConverterData.LBP),
                      _tableCell(currencyCode: "${countryNameList[85]} (${currencyCodeList[85]})",currencyRate: state.currencyConverterData.LKR),
                      _tableCell(currencyCode: "${countryNameList[86]} (${currencyCodeList[86]})",currencyRate: state.currencyConverterData.LRD),
                      _tableCell(currencyCode: "${countryNameList[87]} (${currencyCodeList[87]})",currencyRate: state.currencyConverterData.LSL),

                      _tableCell(currencyCode: "${countryNameList[88]} (${currencyCodeList[88]})",currencyRate: state.currencyConverterData.LYD),
                      _tableCell(currencyCode: "${countryNameList[89]} (${currencyCodeList[89]})",currencyRate: state.currencyConverterData.MAD),
                      _tableCell(currencyCode: "${countryNameList[90]} (${currencyCodeList[90]})",currencyRate: state.currencyConverterData.MDL),
                      _tableCell(currencyCode: "${countryNameList[91]} (${currencyCodeList[91]})",currencyRate: state.currencyConverterData.MGA),
                      _tableCell(currencyCode: "${countryNameList[92]} (${currencyCodeList[92]})",currencyRate: state.currencyConverterData.MKD),
                      _tableCell(currencyCode: "${countryNameList[93]} (${currencyCodeList[93]})",currencyRate: state.currencyConverterData.MMK),
                      _tableCell(currencyCode: "${countryNameList[94]} (${currencyCodeList[94]})",currencyRate: state.currencyConverterData.MNT),
                      _tableCell(currencyCode: "${countryNameList[95]} (${currencyCodeList[95]})",currencyRate: state.currencyConverterData.MOP),

                      _tableCell(currencyCode: "${countryNameList[96]} (${currencyCodeList[96]})",currencyRate: state.currencyConverterData.MRO),
                      _tableCell(currencyCode: "${countryNameList[97]} (${currencyCodeList[97]})",currencyRate: state.currencyConverterData.MRU),
                      _tableCell(currencyCode: "${countryNameList[98]} (${currencyCodeList[98]})",currencyRate: state.currencyConverterData.MUR),
                      _tableCell(currencyCode: "${countryNameList[99]} (${currencyCodeList[99]})",currencyRate: state.currencyConverterData.MVR),
                      _tableCell(currencyCode: "${countryNameList[100]} (${currencyCodeList[100]})",currencyRate: state.currencyConverterData.MWK),
                      _tableCell(currencyCode: "${countryNameList[101]} (${currencyCodeList[101]})",currencyRate: state.currencyConverterData.MXN),
                      _tableCell(currencyCode: "${countryNameList[102]} (${currencyCodeList[102]})",currencyRate: state.currencyConverterData.MYR),
                      _tableCell(currencyCode: "${countryNameList[103]} (${currencyCodeList[103]})",currencyRate: state.currencyConverterData.MZN),

                      _tableCell(currencyCode: "${countryNameList[104]} (${currencyCodeList[104]})",currencyRate: state.currencyConverterData.NAD),
                      _tableCell(currencyCode: "${countryNameList[105]} (${currencyCodeList[105]})",currencyRate: state.currencyConverterData.NGN),
                      _tableCell(currencyCode: "${countryNameList[106]} (${currencyCodeList[106]})",currencyRate: state.currencyConverterData.NIO),
                      _tableCell(currencyCode: "${countryNameList[107]} (${currencyCodeList[107]})",currencyRate: state.currencyConverterData.NOK),
                      _tableCell(currencyCode: "${countryNameList[108]} (${currencyCodeList[108]})",currencyRate: state.currencyConverterData.NPR),
                      _tableCell(currencyCode: "${countryNameList[109]} (${currencyCodeList[109]})",currencyRate: state.currencyConverterData.NZD),
                      _tableCell(currencyCode: "${countryNameList[110]} (${currencyCodeList[110]})",currencyRate: state.currencyConverterData.OMR),
                      _tableCell(currencyCode: "${countryNameList[111]} (${currencyCodeList[111]})",currencyRate: state.currencyConverterData.PAB),

                      _tableCell(currencyCode: "${countryNameList[112]} (${currencyCodeList[112]})",currencyRate: state.currencyConverterData.PEN),
                      _tableCell(currencyCode: "${countryNameList[113]} (${currencyCodeList[113]})",currencyRate: state.currencyConverterData.PGK),
                      _tableCell(currencyCode: "${countryNameList[114]} (${currencyCodeList[114]})",currencyRate: state.currencyConverterData.PHP),
                      _tableCell(currencyCode: "${countryNameList[115]} (${currencyCodeList[115]})",currencyRate: state.currencyConverterData.PKR),
                      _tableCell(currencyCode: "${countryNameList[116]} (${currencyCodeList[116]})",currencyRate: state.currencyConverterData.PLN),
                      _tableCell(currencyCode: "${countryNameList[117]} (${currencyCodeList[117]})",currencyRate: state.currencyConverterData.PYG),
                      _tableCell(currencyCode: "${countryNameList[118]} (${currencyCodeList[118]})",currencyRate: state.currencyConverterData.QAR),
                      _tableCell(currencyCode: "${countryNameList[119]} (${currencyCodeList[119]})",currencyRate: state.currencyConverterData.RON),

                      _tableCell(currencyCode: "${countryNameList[120]} (${currencyCodeList[120]})",currencyRate: state.currencyConverterData.RSD),
                      _tableCell(currencyCode: "${countryNameList[121]} (${currencyCodeList[121]})",currencyRate: state.currencyConverterData.RUB),
                      _tableCell(currencyCode: "${countryNameList[122]} (${currencyCodeList[122]})",currencyRate: state.currencyConverterData.RWF),
                      _tableCell(currencyCode: "${countryNameList[123]} (${currencyCodeList[123]})",currencyRate: state.currencyConverterData.SAR),
                      _tableCell(currencyCode: "${countryNameList[124]} (${currencyCodeList[124]})",currencyRate: state.currencyConverterData.SBD),
                      _tableCell(currencyCode: "${countryNameList[125]} (${currencyCodeList[125]})",currencyRate: state.currencyConverterData.SCR),
                      _tableCell(currencyCode: "${countryNameList[126]} (${currencyCodeList[126]})",currencyRate: state.currencyConverterData.SDG),
                      _tableCell(currencyCode: "${countryNameList[127]} (${currencyCodeList[127]})",currencyRate: state.currencyConverterData.SEK),

                      _tableCell(currencyCode: "${countryNameList[128]} (${currencyCodeList[128]})",currencyRate: state.currencyConverterData.SGD),
                      _tableCell(currencyCode: "${countryNameList[129]} (${currencyCodeList[129]})",currencyRate: state.currencyConverterData.SHP),
                      _tableCell(currencyCode: "${countryNameList[130]} (${currencyCodeList[130]})",currencyRate: state.currencyConverterData.SLL),
                      _tableCell(currencyCode: "${countryNameList[131]} (${currencyCodeList[131]})",currencyRate: state.currencyConverterData.SOS),
                      _tableCell(currencyCode: "${countryNameList[132]} (${currencyCodeList[132]})",currencyRate: state.currencyConverterData.SRD),
                      _tableCell(currencyCode: "${countryNameList[133]} (${currencyCodeList[133]})",currencyRate: state.currencyConverterData.SSP),
                      _tableCell(currencyCode: "${countryNameList[134]} (${currencyCodeList[134]})",currencyRate: state.currencyConverterData.STD),
                      _tableCell(currencyCode: "${countryNameList[135]} (${currencyCodeList[135]})",currencyRate: state.currencyConverterData.STN),

                      _tableCell(currencyCode: "${countryNameList[136]} (${currencyCodeList[136]})",currencyRate: state.currencyConverterData.SVC),
                      _tableCell(currencyCode: "${countryNameList[137]} (${currencyCodeList[137]})",currencyRate: state.currencyConverterData.SYP),
                      _tableCell(currencyCode: "${countryNameList[138]} (${currencyCodeList[138]})",currencyRate: state.currencyConverterData.SZL),
                      _tableCell(currencyCode: "${countryNameList[139]} (${currencyCodeList[139]})",currencyRate: state.currencyConverterData.THB),
                      _tableCell(currencyCode: "${countryNameList[140]} (${currencyCodeList[140]})",currencyRate: state.currencyConverterData.TJS),
                      _tableCell(currencyCode: "${countryNameList[141]} (${currencyCodeList[141]})",currencyRate: state.currencyConverterData.TMT),
                      _tableCell(currencyCode: "${countryNameList[142]} (${currencyCodeList[142]})",currencyRate: state.currencyConverterData.TND),
                      _tableCell(currencyCode: "${countryNameList[143]} (${currencyCodeList[143]})",currencyRate: state.currencyConverterData.TOP),

                      _tableCell(currencyCode: "${countryNameList[144]} (${currencyCodeList[144]})",currencyRate: state.currencyConverterData.TRY),
                      _tableCell(currencyCode: "${countryNameList[145]} (${currencyCodeList[145]})",currencyRate: state.currencyConverterData.TTD),
                      _tableCell(currencyCode: "${countryNameList[146]} (${currencyCodeList[146]})",currencyRate: state.currencyConverterData.TWD),
                      _tableCell(currencyCode: "${countryNameList[147]} (${currencyCodeList[147]})",currencyRate: state.currencyConverterData.TZS),
                      _tableCell(currencyCode: "${countryNameList[148]} (${currencyCodeList[148]})",currencyRate: state.currencyConverterData.UAH),
                      _tableCell(currencyCode: "${countryNameList[149]} (${currencyCodeList[149]})",currencyRate: state.currencyConverterData.UGX),
                      _tableCell(currencyCode: "${countryNameList[150]} (${currencyCodeList[150]})",currencyRate: state.currencyConverterData.USD),
                      _tableCell(currencyCode: "${countryNameList[151]} (${currencyCodeList[151]})",currencyRate: state.currencyConverterData.UYU),

                      _tableCell(currencyCode: "${countryNameList[152]} (${currencyCodeList[152]})",currencyRate: state.currencyConverterData.UZS),
                      _tableCell(currencyCode: "${countryNameList[153]} (${currencyCodeList[153]})",currencyRate: state.currencyConverterData.VEF),
                      _tableCell(currencyCode: "${countryNameList[154]} (${currencyCodeList[154]})",currencyRate: state.currencyConverterData.VES),
                      _tableCell(currencyCode: "${countryNameList[155]} (${currencyCodeList[155]})",currencyRate: state.currencyConverterData.VND),
                      _tableCell(currencyCode: "${countryNameList[156]} (${currencyCodeList[156]})",currencyRate: state.currencyConverterData.VUV),
                      _tableCell(currencyCode: "${countryNameList[157]} (${currencyCodeList[157]})",currencyRate: state.currencyConverterData.WST),
                      _tableCell(currencyCode: "${countryNameList[158]} (${currencyCodeList[158]})",currencyRate: state.currencyConverterData.XAF),
                      _tableCell(currencyCode: "${countryNameList[159]} (${currencyCodeList[159]})",currencyRate: state.currencyConverterData.XAG),

                      _tableCell(currencyCode: "${countryNameList[160]} (${currencyCodeList[160]})",currencyRate: state.currencyConverterData.XAU),
                      _tableCell(currencyCode: "${countryNameList[161]} (${currencyCodeList[161]})",currencyRate: state.currencyConverterData.XCD),
                      _tableCell(currencyCode: "${countryNameList[162]} (${currencyCodeList[162]})",currencyRate: state.currencyConverterData.XDR),
                      _tableCell(currencyCode: "${countryNameList[163]} (${currencyCodeList[163]})",currencyRate: state.currencyConverterData.XOF),
                      _tableCell(currencyCode: "${countryNameList[164]} (${currencyCodeList[164]})",currencyRate: state.currencyConverterData.XPD),
                      _tableCell(currencyCode: "${countryNameList[165]} (${currencyCodeList[165]})",currencyRate: state.currencyConverterData.XPF),
                      _tableCell(currencyCode: "${countryNameList[166]} (${currencyCodeList[166]})",currencyRate: state.currencyConverterData.XPT),
                      _tableCell(currencyCode: "${countryNameList[167]} (${currencyCodeList[167]})",currencyRate: state.currencyConverterData.YER),

                      _tableCell(currencyCode: "${countryNameList[168]} (${currencyCodeList[168]})",currencyRate: state.currencyConverterData.ZAR),
                      _tableCell(currencyCode: "${countryNameList[169]} (${currencyCodeList[169]})",currencyRate: state.currencyConverterData.ZMW),
                      _tableCell(currencyCode: "${countryNameList[170]} (${currencyCodeList[170]})",currencyRate: state.currencyConverterData.ZWL),


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
    },);
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