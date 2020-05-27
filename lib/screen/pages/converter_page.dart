import 'package:currency_pickers/country.dart';
import 'package:currency_pickers/currency_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercurrencyconverter/bloc/currency_converter/currency_converter_bloc.dart';
import 'package:fluttercurrencyconverter/bloc/currency_converter/currency_converter_event.dart';
import 'package:fluttercurrencyconverter/bloc/currency_converter/currency_converter_state.dart';
import 'package:fluttercurrencyconverter/screen/common/chart_widget.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> with SingleTickerProviderStateMixin{
  String _fromCurrencyCode = "USD";

  String _toCurrencyCode = "EUR";

  AnimationController _controller;

  TextEditingController _editingController;
  FocusNode _focusNode;

  @override
  void initState() {
    _editingController=TextEditingController();
    _focusNode=FocusNode();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }
  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    _editingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                inputTextWidget(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                          onTap: _openCurrencyPickerDialogFrom,
                          child: fromCurrencyItemWidget()),
                      iconWidget(),
                      GestureDetector(
                          onTap: _openCurrencyPickerDialogTo,
                          child: toCurrencyItemWidget()),
                      buttonWidget(),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                resultWidget(),
                SizedBox(
                  height: 10,
                ),
                fromResultWidget(),
                SizedBox(
                  height: 20,
                ),
                daysRowItem(),
                SizedBox(
                  height: 20,
                ),
                ChartWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget toCurrencyItemWidget() {
    return Row(
      children: <Widget>[Icon(Icons.keyboard_arrow_down), Text(_toCurrencyCode)],
    );
  }

  Widget fromCurrencyItemWidget() {
    return Row(
      children: <Widget>[Icon(Icons.keyboard_arrow_down), Text(_fromCurrencyCode)],
    );
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

  void _openCurrencyPickerDialogTo() {
    showDialog(
        context: context,
        builder: (_) => CurrencyPickerDialog(
              itemBuilder: _buildDropDownItem,
              title: Text("Convert to"),
              isSearchable: true,
              onValuePicked: (Country country) {
                if (mounted)
                  setState(() {
                    _toCurrencyCode = country.currencyCode;
                  });
              },
            ));
  }

  void _openCurrencyPickerDialogFrom() {
    showDialog(
        context: context,
        builder: (_) => CurrencyPickerDialog(
              itemBuilder: _buildDropDownItem,
              title: Text("Convert from"),
              isSearchable: true,
              onValuePicked: (Country country) {
                if (mounted)
                  setState(() {
                    _fromCurrencyCode = country.currencyCode;
                  });
              },
            ));
  }

  Widget iconWidget() {
    return Container(
      child: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              return Transform.rotate(
                angle: _controller.value * 2 * math.pi,
                child: Container(
                width: 50,
                height: 50,
                child: Image.asset("assets/convert.png"),
                ),
              );
            },

          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text("To"),
            ),
          )
        ],
      ),
    );
  }

  Widget buttonWidget() {
    return GestureDetector(
      onTap: (){
        BlocProvider.of<CurrencyConverterBloc>(context).add(GetConvertCurrency(
          from: "$_fromCurrencyCode",to: "$_toCurrencyCode"
        ));
      _controller..repeat(reverse: true);
      },
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.purple,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius:1,
            color: Colors.black.withOpacity(.6),
            offset: Offset(0.0,1.0),
          )
        ]
        ),
        child: Text(
          "Go",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
  Widget resultWidget() {
    return Container(
      child: BlocBuilder<CurrencyConverterBloc,CurrencyConverterState>(builder: (BuildContext context, CurrencyConverterState state) {
        if (state is CurrencyConverterLoaded){
          _controller.stop();
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("${_editingController.text.isNotEmpty?(state.currencyConverterData.result *double.parse(_editingController.text)).toStringAsFixed(2):state.currencyConverterData.result.toStringAsFixed(2)} $_toCurrencyCode",style: TextStyle(
                  fontSize: 35
              ),),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("0.0 $_toCurrencyCode",style: TextStyle(
                fontSize: 35
            ),),
          ],
        );
      },)
    );
  }
  Widget fromResultWidget() {
    return Container(
      child: BlocBuilder<CurrencyConverterBloc,CurrencyConverterState>(builder: (BuildContext context, CurrencyConverterState state){

        if (state is CurrencyConverterLoaded){
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("1 $_fromCurrencyCode = ${state.currencyConverterData.result.toStringAsFixed(2)} $_toCurrencyCode",style: TextStyle(
              ),),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("1 $_fromCurrencyCode = 0.0 $_toCurrencyCode",style: TextStyle(
            ),),
          ],
        );
      }),
    );
  }

  Widget inputTextWidget() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.black, width: 1)),
      child: TextField(
        controller: _editingController,
        focusNode: _focusNode,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: "Amount e.g 250",
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 25)),
      ),
    );
  }

  Widget daysRowItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _singleDay(text: "30 Days"),
        _singleDay(text: "60 Days"),
        _singleDay(text: "90 Days"),
      ],
    );
  }
  Widget _singleDay({String text}){
    return Row(
      children: <Widget>[
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
            border: Border.all(color: Colors.purple,
            width: 4)
          ),
        ),
        SizedBox(width: 10,),
        Text(text,style: TextStyle(fontSize: 16),)
      ],
    );
  }
}

