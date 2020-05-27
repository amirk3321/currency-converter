import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final int splashAnimationDuration;
  final Widget navigateAfterSeconds;

  SplashScreen({this.splashAnimationDuration=2, this.navigateAfterSeconds});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  Animation _mapHeartAnimation;
  AnimationController _mapHeartController;

  @override
  void initState() {

    Timer(Duration(seconds: widget.splashAnimationDuration), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => widget.navigateAfterSeconds),
          (Route route) => false);
    });

    _mapHeartController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _mapHeartAnimation = Tween(begin: 150.0, end: 170.0).animate(
        CurvedAnimation(curve: Curves.bounceOut, parent: _mapHeartController));

    _mapHeartController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _mapHeartController.repeat();
      }
    });
    _mapHeartController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: iconItemWidget(),
              ),
              titleWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconItemWidget() {
    return AnimatedBuilder(
      animation: _mapHeartController,
      builder: (BuildContext context, Widget child) {
        return Container(
          height: _mapHeartAnimation.value,
          width: _mapHeartAnimation.value,
          child: Image.asset(
            "assets/currency_exchange_logo.png",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget titleWidget() {
    return AutoSizeText(
      "Flutter Currency Converter",
      minFontSize: 20,
      style: TextStyle(fontSize: 25),
    );
  }
  @override
  void dispose() {
   _mapHeartController.dispose();
    super.dispose();
  }
}
